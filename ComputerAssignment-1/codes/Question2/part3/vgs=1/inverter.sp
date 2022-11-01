inverter
.lib '45nm_PTM.txt' 45nm

***** components ******
Vgs    vgs     0    1
Vds    vds     0    0
M_n   vds     vgs    0    0  nmos  L=100nm  W=1um


.model nmos_simple NMOS (LEVEL=1 VT0=0.2519 KP=1.6645e-4 LAMBDA=0.0999 PHI=0.3)
Vds_simple    vds_simple     0    0
M_simple vds_simple    vgs    0    0  nmos_simple  L=100nm  W=1um


***** Analysis ******
.OPTION	post=2 nomod
.op
.DC    Vds  0  1  0.01
.DC    Vds_simple  0  1  0.01
.Print DC Ids= par('abs(i(Vds))')
.Print DC Ids_simple= par('abs(i(Vds_simple))')

.end


