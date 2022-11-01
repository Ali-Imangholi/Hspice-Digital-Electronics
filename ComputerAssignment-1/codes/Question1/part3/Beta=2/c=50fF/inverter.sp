inverter
.lib '45nm_PTM.txt' 45nm

***** parameters ******
.param Lmin=45nm
.param beta=2
.param cout=50fF
.param TD=0
.param TR=10ps
.param TF=10ps
.param PW=20ns
.param PER=100ns

***** components ******
v_1   vdd    0    1
v_in  A      0    PULSE ( 0 1 TD TR TF PW PER )                               
M_p   out    A    vdd    vdd    pmos    L='1.0*Lmin'    W='2*Lmin*beta'
M_n   out    A    0      0      nmos    L='1.0*Lmin'    W='2*Lmin'    
C_out out    0    cout
***** Analysis ******
.OPTION	post=2 nomod
.op
.tran 1ns 150ns
.end


