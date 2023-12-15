%this sets up the matrices for the basic Hansen model
A=[0 0 0 
   0 0 Cbar 
   Kbar MPbar rnbar*NPbar-MPbar
   0 0 0 
   0 0 0 
   0 0 0 
   0 0 -[(rfbar-rnbar)*NPbar+rfbar*MPbar*(1-1/gbar)] 
   0 0 -[NPbar+MPbar*(1-1/gbar)] ];
B=[0 0 0 
   0 -MPbar/gbar 0 
   -(rbar+1-delta)*Kbar 0 0 
   -theta 0 0 
   -(theta-1) 0 0 
   -theta 0 0 
   0 rfbar*MPbar*(1-1/gbar) 0 
   0 MPbar*(1-1/gbar) 0 ];
C=[0 1 0 -1 0 0 -1 0
    0 0 0 Cbar 0 NPbar 0 0
    -rbar*Kbar -wbar*Hbar 0 0 -wbar*Hbar -rnbar*NPbar -rnbar*NPbar 0 
    0 1 0 0 theta 0 0 1
    1 0 0 0 -(1-theta) 0 0 0
    0 0 1 0 -(1-theta) 0 0 0
    0 0 0 0 0 (rfbar-rnbar)*NPbar -rnbar*NPbar rfbar*(NPbar+MPbar*(1-1/gbar))
    0 -wbar*Hbar 0 0 -wbar*Hbar NPbar 0 0];
D=[0 0
   0 0
   0 0
   -1 0
   -1 0
   -1 0
   0 rfbar*MPbar
   0 MPbar];
F=[0 0 -1 
   0 0 0 
   0 0 0];
G=[0 0 1
   0 0 0
   0 1 0];
H=[0 0 0
   0 0 0
   0 -1 0];
J=[0 0 0 -1 0 0 0 0
    beta*rbar -1 0 0 0 0 0 0
    0 0 0 0 0 0 0 0];
K=[0 1 0 0 0 0 0 0
   0 1 0 0 0 0 0 0
   0 0 0 0 0 0 0 0];
L=[0 0
   0 0
   0 0];
M=[0 0
   0 0
   0 -1];
N=[.95 0
    0 0.95];


