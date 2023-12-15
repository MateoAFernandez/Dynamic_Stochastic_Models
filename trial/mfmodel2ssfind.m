    %This part of the program finds the stationary state
    global beta delta theta B gbar rbar rnbar rfbar
    %set the parameters of the model
    beta=.99;
    delta=.025;
    theta=.36;
    B=-2.5805;
    gbar=1;
    rbar = 0.0351;
    rnbar = 1.0101;
    rfbar = 1.0101;
    %choose an initial point for the search for a stationary state
    x0=[1 .7 .9 1 2 .3282 12];
    % MF: los valores inicales los elijo yo usando valores razonables de
    %   las variables
    %find the zeros
    x=fsolve(@mfmodel2ss,x0);
    %set the names of the variables to their ss value
    MPbar=x(1);
    NPbar=x(2);
    Cbar=x(3);
    Ybar=x(4);
    wbar=x(5);
    Hbar=x(6);
    Kbar=x(7);
    
    