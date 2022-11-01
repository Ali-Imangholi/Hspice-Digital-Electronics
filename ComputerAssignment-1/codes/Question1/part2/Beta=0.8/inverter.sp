inverter
.lib '45nm_PTM.txt' 45nm

***** parameters ******
.param Lmin=45nm
.param beta=0.8

***** components ******
v_in   A      0    0
v_1    vdd    0    1
M_p    out    A    vdd    vdd    pmos    L='1.0*Lmin'    W='2*Lmin*beta'
M_n    out    A    0      0      nmos    L='1.0*Lmin'    W='2*Lmin'    

***** Analysis ******
.OPTION	post=2 nomod
.op
.DC		v_in   0	1	0.01
.end



