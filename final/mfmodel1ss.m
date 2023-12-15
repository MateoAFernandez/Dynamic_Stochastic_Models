    function z=mfmodel1ss(x)
    global beta delta theta B gamma pc gbar rbar rnbar
    %convert the x matrix to the variable names
    rfbar=x(1);
    MPbar=x(2);
    NPbar=x(3);
    Cbar=x(4);
    Ybar=x(5);
    wbar=x(6);
    Hbar=x(7);
    Kbar=x(8);
    MPHbar=x(9);
    MPFbar=x(10);
    %set of the equations that you want the zeros of
    z(1)=- beta * wbar / (B * gbar) - Cbar; %okok
    z(2)=rfbar*(1-1/gbar)*MPbar-(rnbar-rfbar)*NPbar; %okok
    z(3)=Hbar*(theta/rbar)^(1/(1-theta))-Kbar; %okok
    z(4)=(1-theta)*(theta/rbar)^(theta/(1-theta))- 2*gamma*(wbar*Hbar*pc-MPFbar)*wbar*pc-rfbar*wbar; %ok
    z(5)= 2*(gamma/gbar)*(pc*wbar*Hbar-MPFbar)-1/beta; %okok
    z(6)=Hbar*(theta/rbar)^(theta/(1-theta))-Ybar; %okok
    z(7)=wbar*Hbar-NPbar-(1-1/gbar)*MPbar; %okok
    z(8)=MPHbar/gbar-NPbar-Cbar; %okok
    z(9)=(gbar/beta)*NPbar+Hbar*((rbar-delta)*(theta/rbar)^(1/(1-theta))-Cbar*gbar*B/beta)-MPHbar; %okok
    z(10)=-MPbar+MPHbar+MPFbar; %ok
    
    % acá lo que hago es obtener los SS, en lugar de hacer los despejes a 
    %   mano, puedo hacerlo todo junto