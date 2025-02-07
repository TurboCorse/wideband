#pragma once

#include <stdint.h>

#include "wideband_config.h"

/* +0 offset */
struct livedata_common_s {
	union {
		struct {
			uint32_t test;
			float vbatt;
		};
		uint8_t pad0[32];
	};
};

/* +32 offset */
struct livedata_afr_s {
	union {
		struct {
			float afr;
			float temperature;
			float nernstVoltage;
			float pumpCurrentTarget;
			float pumpCurrentMeasured;
			float heaterDuty;
			uint8_t fault; // See wbo::Fault
			uint8_t heaterState;
		} __attribute__((packed));
		uint8_t pad[32];
	};
};

/* update functions */
void SamplingUpdateLiveData();

/* access functions */
const struct livedata_common_s * getCommonLiveDataStructAddr();
const struct livedata_afr_s * getAfrLiveDataStructAddr(const int ch);
