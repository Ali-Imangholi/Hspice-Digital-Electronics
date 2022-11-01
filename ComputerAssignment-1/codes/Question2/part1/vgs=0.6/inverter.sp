inverter
.lib '45nm_PTM.txt' 45nm

***** components ******
Vgs    vgs     0    0.6
Vds    vds     0    0
M_n   vds     vgs    0    0  nmos  L=100nm  W=1um

***** Analysis ******
.OPTION	post=2 nomod
.op
.DC    Vds  0  1  0.01
.Print DC Ids= par('abs(i(Vds))')
.end



