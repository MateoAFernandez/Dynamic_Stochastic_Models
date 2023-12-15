    function z=mfmodel2ss(x)
    global beta delta theta B gbar rbar rnbar rfbar
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
    %set of the equations that you want the zeros of
    z(1)=- beta * wbar / B - Cbar;
    z(3)=Hbar*(theta/rbar)^(1/(1-theta))-Kbar;
    z(4)=(1-theta)*(theta/rbar)^(theta/(1-theta))-rfbar*wbar;
    z(5)=Hbar*(theta/rbar)^(theta/(1-theta))-Ybar;
    z(6)=wbar*Hbar-NPbar;
    z(7)=MPbar/gbar-NPbar-Cbar;
    z(8)=1/beta*NPbar+Hbar*((rbar-delta)*(theta/rbar)^(1/(1-theta))-Cbar*B/beta)-MPbar;
    
   