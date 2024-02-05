; Slow Printing Speed = 20mm/s
; Fast Printing Speed = 200mm/s
; Printing Acceleration = 12000 mm/s^2

; Flow Detection Start x = 9.5
; Flow Detection Start y = 15
; Flow Detection End x = 10
; Flow Detection End y = 185
; Flow Detection interval = 10

; Flow Detection Accelerate y1 = 60
; Flow Detection SlowDown y1 = 90

; Flow Detection Accelerate y2 = 110
; Flow Detection SlowDown y2 = 140

; Flow Detection Accelerate y3 = 160
; Flow Detection SlowDown y3 = 190

; Flow Detection Accelerate y4 = 210
; Flow Detection SlowDown y4 = 240

; Flow Detection PointCount = 16


M140 S60.000000
M190 S60.000000

M204 S500

M109 S220.000000

G21
G92 E0 
G1 F2400 E-0.5

M220 S100
M221 S100
G1 Z2.0 F3000 
G1 X10 Y3  F6000.0 
G1 Z0.25 F3000 
G1 X150 Y3 Z0.25 F3000.0 E10 
G1 X5 Y3 Z0.3 F3000.0 E20
G92 E0 
G1 F2400 E-0.5
G1 Z3 F1200
G1 X10 Y10  F12000  


G1 F12000

G90 

M83 
G92 E0 

M106 S0 
SET_VELOCITY_LIMIT ACCEL=5000 
SET_VELOCITY_LIMIT ACCEL_TO_DECEL=2500

SET_PRESSURE_ADVANCE ADVANCE=0.000
G1 Y10 X10 F7200
G1 Z.2 F3600
G1 E0.5 F2400 

G1 Y20 X10 E0.82391 F1200


SET_PRESSURE_ADVANCE ADVANCE=0.020

G1 Y25 X5 E0.29129 F12000
G1 Y30 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.022
G1 Y35 X5 E0.29129 F12000
G1 Y40 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.024
G1 Y45 X5 E0.29129 F12000
G1 Y50 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.026
G1 Y55 X5 E0.29129 F12000
G1 Y60 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.028
G1 Y65 X5 E0.29129 F12000
G1 Y70 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.030
G1 Y75 X5 E0.29129 F12000
G1 Y80 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.032 
G1 Y85 X5 E0.29129 F12000
G1 Y90 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.034 
G1 Y95 X5 E0.29129 F12000
G1 Y100 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.036
G1 Y105 X5 E0.29129 F12000
G1 Y110 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.038
G1 Y115 X5 E0.29129 F12000
G1 Y120 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.040
G1 Y125 X5 E0.29129 F12000
G1 Y130 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.042
G1 Y135 X5 E0.29129 F12000
G1 Y140 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.044
G1 Y145 X5 E0.29129 F12000
G1 Y150 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.046
G1 Y155 X5 E0.29129 F12000
G1 Y160 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.048
G1 Y165 X5 E0.29129 F12000
G1 Y170 X10 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.050
G1 Y175 X5 E0.29129 F12000
G1 Y180 X10 E0.29129 F12000

SET_PRESSURE_ADVANCE ADVANCE=0.000
G1 Y190 X10 E0.82391 F1200
G1 Z.45 F3600

G1 E-0.5 F2400 
G1 Y190 X0 F12000
G1 Y0 X0 F12000


SET_PRESSURE_ADVANCE ADVANCE=0.000
G1 Y10 X9.4243 F7200
G1 Z.2 F3600
G1 E0.8 F2400 
G1 Y20 X9.4243 E0.82391 F1200

SET_PRESSURE_ADVANCE ADVANCE=0.020
G1 Y25 X4.4243 E0.29129 F12000
G1 Y30 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.022
G1 Y35 X4.4243 E0.29129 F12000
G1 Y40 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.024
G1 Y45 X4.4243 E0.29129 F12000
G1 Y50 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.026
G1 Y55 X4.4243 E0.29129 F12000
G1 Y60 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.028
G1 Y65 X4.4243 E0.29129 F12000
G1 Y70 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.030
G1 Y75 X4.4243 E0.29129 F12000
G1 Y80 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.032
G1 Y85 X4.4243 E0.29129 F12000
G1 Y90 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.034
G1 Y95 X4.4243 E0.29129 F12000
G1 Y100 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.036
G1 Y105 X4.4243 E0.29129 F12000
G1 Y110 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.038
G1 Y115 X4.4243 E0.29129 F12000
G1 Y120 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.040
G1 Y125 X4.4243 E0.29129 F12000
G1 Y130 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.042
G1 Y135 X4.4243 E0.29129 F12000
G1 Y140 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.044
G1 Y145 X4.4243 E0.29129 F12000
G1 Y150 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.046
G1 Y155 X4.4243 E0.29129 F12000
G1 Y160 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.048
G1 Y165 X4.4243 E0.29129 F12000
G1 Y170 X9.4243 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.050
G1 Y175 X4.4243 E0.29129 F12000
G1 Y180 X9.4243 E0.29129 F12000

SET_PRESSURE_ADVANCE ADVANCE=0.000
G1 Y190 X9.4243 E0.82391 F1200
G1 Z.45 F3600
G1 E-0.5 F2400 
G1 Y190 X0 F12000
G1 Y0 X0 F12000

SET_PRESSURE_ADVANCE ADVANCE=0.000
G1 Y10 X8.8486 F7200
G1 Z.2 F3600
G1 E0.8 F2400 
G1 Y20 X8.8486 E0.82391 F1200


SET_PRESSURE_ADVANCE ADVANCE=0.020
G1 Y25 X3.8486 E0.29129 F12000
G1 Y30 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.022
G1 Y35 X3.8486 E0.29129 F12000
G1 Y40 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.024
G1 Y45 X3.8486 E0.29129 F12000
G1 Y50 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.026
G1 Y55 X3.8486 E0.29129 F12000
G1 Y60 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.028
G1 Y65 X3.8486 E0.29129 F12000
G1 Y70 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.030
G1 Y75 X3.8486 E0.29129 F12000
G1 Y80 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.032
G1 Y85 X3.8486 E0.29129 F12000
G1 Y90 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.034
G1 Y95 X3.8486 E0.29129 F12000
G1 Y100 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.036
G1 Y105 X3.8486 E0.29129 F12000
G1 Y110 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.038
G1 Y115 X3.8486 E0.29129 F12000
G1 Y120 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.040
G1 Y125 X3.8486 E0.29129 F12000
G1 Y130 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.042
G1 Y135 X3.8486 E0.29129 F12000
G1 Y140 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.044
G1 Y145 X3.8486 E0.29129 F12000
G1 Y150 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.046
G1 Y155 X3.8486 E0.29129 F12000
G1 Y160 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.048
G1 Y165 X3.8486 E0.29129 F12000
G1 Y170 X8.8486 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.050
G1 Y175 X3.8486 E0.29129 F12000
G1 Y180 X8.8486 E0.29129 F12000

SET_PRESSURE_ADVANCE ADVANCE=0.000
G1 Y190 X8.8486 E0.82391 F1200
G1 Z.45 F3600
G1 E-0.5 F2400 
G1 Y190 X0 F12000
G1 Y0 X0 F12000

SET_PRESSURE_ADVANCE ADVANCE=0.000
G1 Y10 X12 F7200
G1 Z.2 F3600
G1 E0.8 F2400 
G1 Y20 X12 E0.82391 F1200


SET_PRESSURE_ADVANCE ADVANCE=0.052
G1 Y25 X7 E0.29129 F12000
G1 Y30 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.054
G1 Y35 X7 E0.29129 F12000
G1 Y40 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.056
G1 Y45 X7 E0.29129 F12000
G1 Y50 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.058
G1 Y55 X7 E0.29129 F12000
G1 Y60 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.060
G1 Y65 X7 E0.29129 F12000
G1 Y70 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.062
G1 Y75 X7 E0.29129 F12000
G1 Y80 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.064
G1 Y85 X7 E0.29129 F12000
G1 Y90 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.066
G1 Y95 X7 E0.29129 F12000
G1 Y100 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.068
G1 Y105 X7 E0.29129 F12000
G1 Y110 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.070
G1 Y115 X7 E0.29129 F12000
G1 Y120 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.072
G1 Y125 X7 E0.29129 F12000
G1 Y130 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.074
G1 Y135 X7 E0.29129 F12000
G1 Y140 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.076
G1 Y145 X7 E0.29129 F12000
G1 Y150 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.078
G1 Y155 X7 E0.29129 F12000
G1 Y160 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.080
G1 Y165 X7 E0.29129 F12000
G1 Y170 X12 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.082
G1 Y175 X7 E0.29129 F12000
G1 Y180 X12 E0.29129 F12000


SET_PRESSURE_ADVANCE ADVANCE=0.000
G1 Y190 X12 E0.82391 F1200
G1 Z.45 F3600
G1 E-0.5 F2400 
G1 Y190 X0 F12000
G1 Y0 X0 F12000


SET_PRESSURE_ADVANCE ADVANCE=0.000
G1 Y10 X12.5757 F7200
G1 Z.2 F3600
G1 E0.8 F2400 

G1 Y20 X12.5757 E0.82391 F1200


SET_PRESSURE_ADVANCE ADVANCE=0.052
G1 Y25 X7.5757 E0.29129 F12000
G1 Y30 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.054
G1 Y35 X7.5757 E0.29129 F12000
G1 Y40 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.056
G1 Y45 X7.5757 E0.29129 F12000
G1 Y50 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.058
G1 Y55 X7.5757 E0.29129 F12000
G1 Y60 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.060
G1 Y65 X7.5757 E0.29129 F12000
G1 Y70 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.062
G1 Y75 X7.5757 E0.29129 F12000
G1 Y80 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.064
G1 Y85 X7.5757 E0.29129 F12000
G1 Y90 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.066
G1 Y95 X7.5757 E0.29129 F12000
G1 Y100 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.068
G1 Y105 X7.5757 E0.29129 F12000
G1 Y110 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.070
G1 Y115 X7.5757 E0.29129 F12000
G1 Y120 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.072
G1 Y125 X7.5757 E0.29129 F12000
G1 Y130 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.074
G1 Y135 X7.5757 E0.29129 F12000
G1 Y140 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.076
G1 Y145 X7.5757 E0.29129 F12000
G1 Y150 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.078
G1 Y155 X7.5757 E0.29129 F12000
G1 Y160 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.080
G1 Y165 X7.5757 E0.29129 F12000
G1 Y170 X12.5757 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.082
G1 Y175 X7.5757 E0.29129 F12000
G1 Y180 X12.5757 E0.29129 F12000


SET_PRESSURE_ADVANCE ADVANCE=0.000
G1 Y190 X12.5757 E0.82391 F1200
G1 Z.45 F3600
G1 E-0.5 F2400 
G1 Y190 X0 F12000
G1 Y0 X0 F12000


SET_PRESSURE_ADVANCE ADVANCE=0.000
G1 Y10 X13.1514 F7200
G1 Z.2 F3600
G1 E0.8 F2400 
G1 Y20 X13.1514 E0.82391 F1200


SET_PRESSURE_ADVANCE ADVANCE=0.052
G1 Y25 X8.1514 E0.29129 F12000
G1 Y30 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.054
G1 Y35 X8.1514 E0.29129 F12000
G1 Y40 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.056
G1 Y45 X8.1514 E0.29129 F12000
G1 Y50 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.058
G1 Y55 X8.1514 E0.29129 F12000
G1 Y60 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.060
G1 Y65 X8.1514 E0.29129 F12000
G1 Y70 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.062
G1 Y75 X8.1514 E0.29129 F12000
G1 Y80 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.064
G1 Y85 X8.1514 E0.29129 F12000
G1 Y90 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.066
G1 Y95 X8.1514 E0.29129 F12000
G1 Y100 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.068
G1 Y105 X8.1514 E0.29129 F12000
G1 Y110 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.070
G1 Y115 X8.1514 E0.29129 F12000
G1 Y120 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.072
G1 Y125 X8.1514 E0.29129 F12000
G1 Y130 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.074
G1 Y135 X8.1514 E0.29129 F12000
G1 Y140 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.076
G1 Y145 X8.1514 E0.29129 F12000
G1 Y150 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.078
G1 Y155 X8.1514 E0.29129 F12000
G1 Y160 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.080
G1 Y165 X8.1514 E0.29129 F12000
G1 Y170 X13.1514 E0.29129 F12000
SET_PRESSURE_ADVANCE ADVANCE=0.082
G1 Y175 X8.1514 E0.29129 F12000
G1 Y180 X13.1514 E0.29129 F12000



SET_PRESSURE_ADVANCE ADVANCE=0.000
G1 Y190 X13.1514 E0.82391 F1200
G1 Z.45 F3600
G1 E-0.5 F2400
G1 Y190 X0 F12000
G1 Y0 X0 F12000
