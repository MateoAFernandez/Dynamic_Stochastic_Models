    function z=mfmodel2ss(x)
    global beta delta theta B gbar rbar rfbar gamma pc
    %convert the x matrix to the variable names
    %gbar=x(1);
    %rbar=x(2);
    %rnbar=x(3);
    MPbar=x(1);
    NPbar=x(2);
    Cbar=x(3);
    Ybar=x(4);
    wbar=x(5);
    Hbar=x(6);
    Kbar=x(7);
    MPHbar=x(8);
    MPFbar=x(9);
    %set of the equations that you want the zeros of
    z(1)=- beta * wbar / (B * gbar) - Cbar;
    z(2)=Hbar*(theta/rbar)^(1/(1-theta))-Kbar;
    z(3)=(1-theta)*(theta/rbar)^(theta/(1-theta))- 2*gamma*(wbar*Hbar*pc-MPFbar)*wbar*pc-rfbar*wbar;
    z(4)= 2*gamma*(pc*wbar*Hbar-MPFbar)-1/beta;
    z(5)=Hbar*(theta/rbar)^(theta/(1-theta))-Ybar;
    z(6)=wbar*Hbar-NPbar;
    z(7)=MPHbar/gbar-NPbar-Cbar;
    z(8)=(gbar/beta)*NPbar+Hbar*((rbar-delta)*(theta/rbar)^(1/(1-theta))-Cbar*gbar*B/beta)-MPHbar;
    z(9)=-MPbar+MPHbar+MPFbar;
    
   