clear;
clc;

%% parametry
Vin = 12;
Vcc = 3.3;
%%

printf("# 7 segment\n");
Ndig = 3;
Nseg = 7*Ndig;
Iseg = 0.01;
Useg = 2;
IDigMax = Nseg*Iseg
Rseg = (Vcc - Useg) / Iseg % ~220
printf("\n")

printf("# stabilizator\n");
Vout = Vcc;
Vref = 1.25;
Iadj = 0.000045;
R2 = 1000
ZR1 = ((Vout-Iadj*R2)/Vref-1)/R2;
R1 = 1/ZR1 % 623 ~ 620 (E24)
Vout = Vref*(1+R2/R1) + Iadj*R2
printf("\n")

printf("# tranzystory multipleksujace\n");
Rc = Rseg/7;
Ube = 0.7;
Vcesat = 0.4;
Ic = IDigMax;
Bmin = 30;
Rb = (Vcc - Ube)/(Vin - Vcesat) * Bmin * Rc % 120
Ib = (Vcc - Ube)/Rb
Pmax = Vcesat * Ic
printf("\n")

printf("# tranzystor UV LED\n");

printf("\n")

printf("# LED Vin\n");
Vled = 2;
Iled = 0.02;
RledVin = (Vin - Vled) / Iled
printf("# LED Vcc\n");
RledVcc = (Vcc - Vled) / Iled
printf("\n");