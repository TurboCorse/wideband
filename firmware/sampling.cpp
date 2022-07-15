#include "sampling.h"

#include "ch.h"
#include "hal.h"

#include "wideband_config.h"

#include "port.h"
#include "io_pins.h"

#include <rusefi/interpolation.h>

// Stored results
static float nernstAc = 0;
static float nernstDc = 0;
static float pumpCurrentSenseVoltage = 0;
static float internalBatteryVoltage = 0;

// Last point is approximated by the greatest measurable sensor resistance
static const float lsu49TempBins[]   = {   80, 150, 200, 250, 300, 350, 400, 450, 550, 650, 800, 1000, 1200, 2500, 5000 };
static const float lsu49TempValues[] = { 1030, 890, 840, 805, 780, 760, 745, 730, 705, 685, 665,  640,  630,  565,  500 };

constexpr float f_abs(float x)
{
    return x > 0 ? x : -x;
}

static THD_WORKING_AREA(waSamplingThread, 256);

static void SamplingThread(void*)
{
    float r_2 = 0;
    float r_3 = 0;

    /* GD32: Insert 20us delay after ADC enable */
    chThdSleepMilliseconds(1);

    while(true)
    {
        /* TODO: run for all channels */
        int ch = 0;

        auto result = AnalogSample();

        // Toggle the pin after sampling so that any switching noise occurs while we're doing our math instead of when sampling
        palTogglePad(NERNST_ESR_DRIVER_PORT, NERNST_ESR_DRIVER_PIN);

        float r_1 = result.ch[ch].NernstVoltage;

        // r2_opposite_phase estimates where the previous sample would be had we not been toggling
        // AKA the absolute value of the difference between r2_opposite_phase and r2 is the amplitude
        // of the AC component on the nernst voltage.  We have to pull this trick so as to use the past 3
        // samples to cancel out any slope in the DC (aka actual nernst cell output) from the AC measurement
        // See firmware/sampling.png for a drawing of what's going on here
        float r2_opposite_phase = (r_1 + r_3) / 2;

        // Compute AC (difference) and DC (average) components
        float nernstAcLocal = f_abs(r2_opposite_phase - r_2);
        nernstDc = (r2_opposite_phase + r_2) / 2;

        nernstAc =
            (1 - ESR_SENSE_ALPHA) * nernstAc +
            ESR_SENSE_ALPHA * nernstAcLocal;

        // Exponential moving average (aka first order lpf)
        pumpCurrentSenseVoltage =
            (1 - PUMP_FILTER_ALPHA) * pumpCurrentSenseVoltage +
            PUMP_FILTER_ALPHA * (result.ch[ch].PumpCurrentVoltage - result.VirtualGroundVoltageInt);

        #ifdef BATTERY_INPUT_DIVIDER
            internalBatteryVoltage = result.ch[ch].BatteryVoltage;
        #endif

        // Shift history over by one
        r_3 = r_2;
        r_2 = r_1;
    }
}

void StartSampling()
{
    adcStart(&ADCD1, nullptr);
    chThdCreateStatic(waSamplingThread, sizeof(waSamplingThread), NORMALPRIO + 5, SamplingThread, nullptr);
}

float GetNernstAc()
{
    return nernstAc;
}

float GetSensorInternalResistance()
{
    // Sensor is the lowside of a divider, top side is 22k, and 3.3v AC pk-pk is injected
    float totalEsr = ESR_SUPPLY_R / (VCC_VOLTS / GetNernstAc() - 1);

    // There is a resistor between the opamp and Vm sensor pin.  Remove the effect of that
    // resistor so that the remainder is only the ESR of the sensor itself
    return totalEsr - VM_RESISTOR_VALUE;
}

float GetSensorTemperature()
{
    float esr = GetSensorInternalResistance();

    if (esr > 5000)
    {
        return 0;
    }

    return interpolate2d(esr, lsu49TempBins, lsu49TempValues);
}

float GetNernstDc()
{
    return nernstDc;
}

float GetPumpNominalCurrent()
{
    // Gain is 10x, then a 61.9 ohm resistor
    // Effective resistance with the gain is 619 ohms
    // 1000 is to convert to milliamperes
    constexpr float ratio = -1000 / (PUMP_CURRENT_SENSE_GAIN * LSU_SENSE_R);
    return pumpCurrentSenseVoltage * ratio;
}

float GetInternalBatteryVoltage()
{
    return internalBatteryVoltage;
}
