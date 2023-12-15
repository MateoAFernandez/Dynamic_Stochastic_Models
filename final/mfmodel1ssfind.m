    %This part of the program finds the stationary state
    global beta delta theta B gamma pc gbar rbar rnbar
    %set the parameters of the model
    beta=.99;
    delta=.025;
    theta=.36;
    B=-2.5805;
    gamma=5;
    pc=.40;
    gbar=1.024;
    rbar = 0.035101;
    rnbar = 1.0343;
    %choose an initial point for the search for a stationary state
    x0=[1 2 .7 .9 1 2 .3282 12 1 2];
    % MF: los valores inicales los elijo yo usando valores razonables de
    %   las variables
    %find the zeros
    x=fsolve(@mfmodel1ss,x0);
    %set the names of the variables to their ss value
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
    