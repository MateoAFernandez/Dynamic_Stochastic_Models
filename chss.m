    function z=chss(x)
    global beta delta theta BB gbar
    %convert the x matrix to the variable names
    rbar=x(1);
    Cbar=x(2);
    Hbar=x(3);
    Ybar=x(4);
    Kbar=x(5);
    MPbar=x(6);
    wbar=x(7);
    %set of the equations that you want the zeros of
    z(1)=1-beta*(rbar+1-delta);
    z(2)=BB*Cbar*gbar+beta*wbar;
    z(3)=MPbar-wbar*Hbar-(rbar-delta)*Kbar;
    z(4)=Ybar-Kbar^theta*Hbar^(1-theta);
    z(5)=rbar-theta*Kbar^(theta-1)*Hbar^(1-theta);
    z(6)=Cbar-MPbar;
    z(7)=wbar-(1-theta)*Kbar^(theta)*Hbar^(-theta);