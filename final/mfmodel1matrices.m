%this sets up the matrices for the basic Hansen model
Z=[2*gamma*wbar*MPFbar*pc-4*gamma*wbar^2*Hbar*pc^2-rfbar*wbar];
Y=-[theta*(1-theta)*(theta/rbar)^(theta/(1-theta))+2*gamma*wbar^2*Hbar*pc^2];

A=[0 0 0 0 0
   0 0 Cbar 0 0
   Kbar 0 rnbar*NPbar-MPHbar 0 MPHbar
   0 0 -2*gamma*wbar*MPFbar*pc 0 0
   0 0 0 0 0
   0 0 0 0 0
   0 0 -[(rfbar-rnbar)*NPbar+rfbar*MPbar*(1-1/gbar)] 0 0
   0 0 -[NPbar+MPbar*(1-1/gbar)] 0 0];
B=[0 0 0 0 0
   0 0 0 0 -MPHbar/gbar
   -(rbar+1-delta)*Kbar 0 0 0 0
   (1-theta)*(theta/rbar)^(theta/(1-theta))*theta 0 0 2*gamma*wbar*MPFbar*pc 0
   -(theta-1) 0 0 0 0
   -theta 0 0 0 0
   0 rfbar*MPbar*(1-1/gbar) 0 0 0
   0 MPbar*(1-1/gbar) 0 0 0];
C=[0 1 0 -1 0 0 -1 0
    0 0 0 Cbar 0 NPbar 0 0
    -rbar*Kbar -wbar*Hbar 0 0 -wbar*Hbar -rnbar*NPbar -rnbar*NPbar 0 
    0 Z 0 0 Y 0 0 -rfbar*wbar
    1 0 0 0 -(1-theta) 0 0 0
    0 0 1 0 -(1-theta) 0 0 0
    0 0 0 0 0 (rfbar-rnbar)*NPbar -rnbar*NPbar rfbar*(NPbar+MPbar*(1-1/gbar))
    0 -wbar*Hbar 0 0 -wbar*Hbar NPbar 0 0];
D=[0 0
   0 0
   0 0
   (1-theta)*(theta/rbar)^(theta/(1-theta)) 0
   -1 0
   -1 0
   0 rfbar*MPbar
   0 MPbar];
F=[0 0 -1 0 0
   0 0 0 0 0
   0 0 2*gamma*MPFbar-1/beta 0 0
   0 0 0 0 0
   0 0 0 0 0];
G=[0 0 1 0 0
   0 0 0 0 0
   0 0 1/beta -2*gamma*MPFbar 0
   0 1 0 0 0
   0 -MPbar 0 MPFbar MPHbar];
H=[0 0 0 0 0
   0 0 0 0 0
   0 0 0 0 0
   0 -1 0 0 0
   0 0 0 0 0];
J=[0 0 0 -1 0 0 0 0
    beta*rbar -1 0 0 0 0 0 0
    0 2*gamma*pc*wbar*Hbar 0 0 2*gamma*pc*wbar*Hbar 0 0 0
    0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0];
K=[0 1 0 0 0 0 0 0
   0 1 0 0 0 0 0 0
   0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0
   0 0 0 0 0 0 0 0];
L=[0 0
   0 0
   0 0
   0 0
   0 0];
M=[0 0
   0 0
   0 0
   0 -1
   0 0];
N=[.95 0
    0 0.40];


