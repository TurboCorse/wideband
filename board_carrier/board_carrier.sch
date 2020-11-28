EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0101
U 1 1 5FB6223C
P 5475 1800
F 0 "#PWR0101" H 5475 1550 50  0001 C CNN
F 1 "GND" H 5480 1627 50  0000 C CNN
F 2 "" H 5475 1800 50  0001 C CNN
F 3 "" H 5475 1800 50  0001 C CNN
	1    5475 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 5FB62745
P 1525 1075
F 0 "D2" H 1525 859 50  0000 C CNN
F 1 "D_Schottky" H 1525 950 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 1525 1075 50  0001 C CNN
F 3 "~" H 1525 1075 50  0001 C CNN
F 4 "C8678" H 1525 1075 50  0001 C CNN "LCSC"
	1    1525 1075
	-1   0    0    1   
$EndComp
$Comp
L Device:D_TVS D1
U 1 1 5FB63423
P 1275 1350
F 0 "D1" V 1229 1429 50  0000 L CNN
F 1 "D_TVS" V 1320 1429 50  0000 L CNN
F 2 "Diode_SMD:D_SMC" H 1275 1350 50  0001 C CNN
F 3 "~" H 1275 1350 50  0001 C CNN
F 4 "C133648" H 1275 1350 50  0001 C CNN "LCSC"
	1    1275 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FB63A0D
P 1275 1500
F 0 "#PWR0102" H 1275 1250 50  0001 C CNN
F 1 "GND" H 1280 1327 50  0000 C CNN
F 2 "" H 1275 1500 50  0001 C CNN
F 3 "" H 1275 1500 50  0001 C CNN
	1    1275 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1375 1075 1275 1075
Wire Wire Line
	1275 1075 1275 1200
Text GLabel 1150 1075 0    50   Input ~ 0
12V_RAW
Wire Wire Line
	1150 1075 1275 1075
Connection ~ 1275 1075
$Comp
L Device:C C1
U 1 1 5FB64467
P 1825 1325
F 0 "C1" H 1940 1371 50  0000 L CNN
F 1 "1u" H 1940 1280 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1863 1175 50  0001 C CNN
F 3 "~" H 1825 1325 50  0001 C CNN
F 4 "C15849" H 1825 1325 50  0001 C CNN "LCSC"
	1    1825 1325
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FB64D47
P 1825 1475
F 0 "#PWR0103" H 1825 1225 50  0001 C CNN
F 1 "GND" H 1830 1302 50  0000 C CNN
F 2 "" H 1825 1475 50  0001 C CNN
F 3 "" H 1825 1475 50  0001 C CNN
	1    1825 1475
	1    0    0    -1  
$EndComp
Wire Wire Line
	1825 1175 1825 1075
Wire Wire Line
	1825 1075 1675 1075
Wire Wire Line
	2050 1075 1825 1075
Connection ~ 1825 1075
$Comp
L Regulator_Linear:LM78M05_TO252 U2
U 1 1 5FB67A82
P 2350 1075
F 0 "U2" H 2350 1317 50  0000 C CNN
F 1 "LM78M05_TO252" H 2350 1226 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 2350 1300 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM78M05.pdf" H 2350 1025 50  0001 C CNN
F 4 "C58069" H 2350 1075 50  0001 C CNN "LCSC"
	1    2350 1075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FB6926D
P 2350 1375
F 0 "#PWR0104" H 2350 1125 50  0001 C CNN
F 1 "GND" H 2355 1202 50  0000 C CNN
F 2 "" H 2350 1375 50  0001 C CNN
F 3 "" H 2350 1375 50  0001 C CNN
	1    2350 1375
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5FB69902
P 2875 975
F 0 "#PWR0105" H 2875 825 50  0001 C CNN
F 1 "+5V" H 2890 1148 50  0000 C CNN
F 2 "" H 2875 975 50  0001 C CNN
F 3 "" H 2875 975 50  0001 C CNN
	1    2875 975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1075 2875 1075
Wire Wire Line
	2875 1075 2875 975 
$Comp
L Interface_CAN_LIN:TJA1051T-3 U1
U 1 1 5FB6A2CB
P 5475 1400
F 0 "U1" H 5150 1775 50  0000 C CNN
F 1 "TJA1051T-3" H 5750 1775 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5475 900 50  0001 C CIN
F 3 "http://www.nxp.com/documents/data_sheet/TJA1051.pdf" H 5475 1400 50  0001 C CNN
F 4 "C38695" H 5475 1400 50  0001 C CNN "LCSC"
	1    5475 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5FB6B936
P 5475 1000
F 0 "#PWR0106" H 5475 850 50  0001 C CNN
F 1 "+5V" H 5490 1173 50  0000 C CNN
F 2 "" H 5475 1000 50  0001 C CNN
F 3 "" H 5475 1000 50  0001 C CNN
	1    5475 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5FB6BFE5
P 4975 1600
F 0 "#PWR0107" H 4975 1350 50  0001 C CNN
F 1 "GND" V 4980 1472 50  0000 R CNN
F 2 "" H 4975 1600 50  0001 C CNN
F 3 "" H 4975 1600 50  0001 C CNN
	1    4975 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5FB6D1DC
P 2875 1325
F 0 "C2" H 2990 1371 50  0000 L CNN
F 1 "1u" H 2990 1280 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2913 1175 50  0001 C CNN
F 3 "~" H 2875 1325 50  0001 C CNN
F 4 "C15849" H 2875 1325 50  0001 C CNN "LCSC"
	1    2875 1325
	1    0    0    -1  
$EndComp
Wire Wire Line
	2875 1075 2875 1175
Connection ~ 2875 1075
$Comp
L power:GND #PWR0109
U 1 1 5FB6E5F5
P 2875 1475
F 0 "#PWR0109" H 2875 1225 50  0001 C CNN
F 1 "GND" H 2880 1302 50  0000 C CNN
F 2 "" H 2875 1475 50  0001 C CNN
F 3 "" H 2875 1475 50  0001 C CNN
	1    2875 1475
	1    0    0    -1  
$EndComp
Text Label 4650 1200 0    50   ~ 0
CAN_TX
Wire Wire Line
	4650 1200 4975 1200
Wire Wire Line
	4975 1300 4650 1300
Text Label 4650 1300 0    50   ~ 0
CAN_RX
Text Label 6275 1300 2    50   ~ 0
CAN_H
Text Label 6275 1500 2    50   ~ 0
CAN_L
Wire Wire Line
	6275 1500 5975 1500
Wire Wire Line
	6275 1300 5975 1300
$Comp
L Device:R R1
U 1 1 5FB83149
P 3450 1300
F 0 "R1" H 3520 1346 50  0000 L CNN
F 1 "220" H 3520 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3380 1300 50  0001 C CNN
F 3 "~" H 3450 1300 50  0001 C CNN
F 4 "C22962" H 3450 1300 50  0001 C CNN "LCSC"
	1    3450 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FB834DF
P 3450 1725
F 0 "R2" H 3520 1771 50  0000 L CNN
F 1 "470" H 3520 1680 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3380 1725 50  0001 C CNN
F 3 "~" H 3450 1725 50  0001 C CNN
F 4 "C23179" H 3450 1725 50  0001 C CNN "LCSC"
	1    3450 1725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5FB83A8E
P 3450 1875
F 0 "#PWR0108" H 3450 1625 50  0001 C CNN
F 1 "GND" H 3455 1702 50  0000 C CNN
F 2 "" H 3450 1875 50  0001 C CNN
F 3 "" H 3450 1875 50  0001 C CNN
	1    3450 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1150 3450 1075
Wire Wire Line
	3450 1075 2875 1075
$Comp
L Device:C C3
U 1 1 5FB842B4
P 3800 1725
F 0 "C3" H 3915 1771 50  0000 L CNN
F 1 "1u" H 3915 1680 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3838 1575 50  0001 C CNN
F 3 "~" H 3800 1725 50  0001 C CNN
F 4 "C15849" H 3800 1725 50  0001 C CNN "LCSC"
	1    3800 1725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FB8494A
P 3800 1875
F 0 "#PWR0110" H 3800 1625 50  0001 C CNN
F 1 "GND" H 3805 1702 50  0000 C CNN
F 2 "" H 3800 1875 50  0001 C CNN
F 3 "" H 3800 1875 50  0001 C CNN
	1    3800 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1450 3450 1500
Wire Wire Line
	3450 1500 3800 1500
Connection ~ 3450 1500
Wire Wire Line
	3450 1500 3450 1575
Wire Wire Line
	3800 1575 3800 1500
Connection ~ 3800 1500
Wire Wire Line
	3800 1500 4975 1500
Text Notes 3350 2350 0    50   ~ 0
VIO pin only draws 500uA max so\na divider will work fine
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 5FB94B65
P 1875 2500
F 0 "J2" H 2000 2450 50  0000 C CNN
F 1 "Conn_01x08" H 1793 2926 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1875 2500 50  0001 C CNN
F 3 "~" H 1875 2500 50  0001 C CNN
	1    1875 2500
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 5FB96561
P 1500 2500
F 0 "J1" H 1575 2450 50  0000 L CNN
F 1 "Conn_01x08" H 1580 2401 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1500 2500 50  0001 C CNN
F 3 "~" H 1500 2500 50  0001 C CNN
	1    1500 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5FB97B42
P 1300 2200
F 0 "#PWR0111" H 1300 2050 50  0001 C CNN
F 1 "+5V" V 1315 2328 50  0000 L CNN
F 2 "" H 1300 2200 50  0001 C CNN
F 3 "" H 1300 2200 50  0001 C CNN
	1    1300 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FB987A8
P 1300 2300
F 0 "#PWR0112" H 1300 2050 50  0001 C CNN
F 1 "GND" V 1305 2172 50  0000 R CNN
F 2 "" H 1300 2300 50  0001 C CNN
F 3 "" H 1300 2300 50  0001 C CNN
	1    1300 2300
	0    1    1    0   
$EndComp
Text Label 725  2400 0    50   ~ 0
UART_TX
Wire Wire Line
	725  2400 1300 2400
Text Label 725  2500 0    50   ~ 0
UART_RX
Wire Wire Line
	725  2500 1300 2500
Text Label 725  2700 0    50   ~ 0
CAN_TX
Text Label 725  2600 0    50   ~ 0
CAN_RX
Wire Wire Line
	725  2700 1300 2700
Wire Wire Line
	725  2600 1300 2600
Text Label 850  2800 0    50   ~ 0
nRESET
Wire Wire Line
	850  2800 1300 2800
Text Label 850  2900 0    50   ~ 0
Boot0
Wire Wire Line
	850  2900 1300 2900
Text Label 2450 2600 2    50   ~ 0
LSU_Ip
Wire Wire Line
	2450 2600 2075 2600
Wire Wire Line
	2075 2700 2450 2700
Wire Wire Line
	2075 2800 2450 2800
Wire Wire Line
	2075 2900 2450 2900
Text Label 2450 2700 2    50   ~ 0
LSU_Vm
Text Label 2450 2800 2    50   ~ 0
LSU_Rtrim
Text Label 2450 2900 2    50   ~ 0
LSU_Un
$Comp
L power:GND #PWR0113
U 1 1 5FB9D2BA
P 2200 2250
F 0 "#PWR0113" H 2200 2000 50  0001 C CNN
F 1 "GND" V 2205 2122 50  0000 R CNN
F 2 "" H 2200 2250 50  0001 C CNN
F 3 "" H 2200 2250 50  0001 C CNN
	1    2200 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2075 2200 2125 2200
Wire Wire Line
	2125 2200 2125 2250
Wire Wire Line
	2125 2300 2075 2300
Wire Wire Line
	2125 2250 2200 2250
Connection ~ 2125 2250
Wire Wire Line
	2125 2250 2125 2300
Wire Wire Line
	2075 2400 2125 2400
Wire Wire Line
	2125 2400 2125 2450
Wire Wire Line
	2125 2500 2075 2500
Wire Wire Line
	2700 2450 2125 2450
Connection ~ 2125 2450
Wire Wire Line
	2125 2450 2125 2500
Text Label 2700 2450 2    50   ~ 0
LSU_Heater-
Text Label 4100 3200 2    50   ~ 0
LSU_Heater-
Text Label 4100 3000 2    50   ~ 0
LSU_Ip
Text Label 4100 3100 2    50   ~ 0
LSU_Vm
Text Label 4100 3400 2    50   ~ 0
LSU_Rtrim
Text Label 4100 3500 2    50   ~ 0
LSU_Un
Text Label 1825 675  0    50   ~ 0
LSU_Heater+
Wire Wire Line
	1825 675  1825 1075
Text Label 4100 3300 2    50   ~ 0
LSU_Heater+
$Comp
L Connector_Generic:Conn_01x06 J_LSU1
U 1 1 5FBB3B15
P 3350 3200
F 0 "J_LSU1" H 3268 3525 50  0000 C CNN
F 1 "Conn_01x06" H 3268 2766 50  0001 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0615_1x06_P3.00mm_Vertical" H 3350 3200 50  0001 C CNN
F 3 "~" H 3350 3200 50  0001 C CNN
	1    3350 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 3300 4100 3300
Wire Wire Line
	4100 3200 3550 3200
Wire Wire Line
	4100 3000 3550 3000
Wire Wire Line
	3550 3100 4100 3100
Wire Wire Line
	3550 3400 4100 3400
Wire Wire Line
	3550 3500 4100 3500
Text Notes 4175 3000 0    50   ~ 0
red
Text Notes 4175 3100 0    50   ~ 0
yellow
Text Notes 4175 3200 0    50   ~ 0
white
Text Notes 4175 3300 0    50   ~ 0
grey
Text Notes 4175 3400 0    50   ~ 0
green
Text Notes 4175 3500 0    50   ~ 0
black
Text Notes 4175 2875 0    50   ~ 0
LSU 4.9 Wire Colors:
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5FBCCED0
P 1325 3800
F 0 "J3" H 1243 4025 50  0000 C CNN
F 1 "Conn_01x04" H 1243 4026 50  0001 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0415_1x04_P3.00mm_Vertical" H 1325 3800 50  0001 C CNN
F 3 "~" H 1325 3800 50  0001 C CNN
	1    1325 3800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5FBCD9A4
P 1600 4100
F 0 "#PWR0114" H 1600 3850 50  0001 C CNN
F 1 "GND" V 1605 3972 50  0000 R CNN
F 2 "" H 1600 4100 50  0001 C CNN
F 3 "" H 1600 4100 50  0001 C CNN
	1    1600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1525 4000 1600 4000
Wire Wire Line
	1600 4000 1600 4100
Text GLabel 1650 3625 2    50   Input ~ 0
12V_RAW
Wire Wire Line
	1650 3625 1525 3700
Text Label 1825 3800 2    50   ~ 0
CAN_H
Text Label 1825 3900 2    50   ~ 0
CAN_L
Wire Wire Line
	1825 3900 1525 3900
Wire Wire Line
	1825 3800 1525 3800
$EndSCHEMATC
