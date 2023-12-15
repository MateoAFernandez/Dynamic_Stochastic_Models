%this sequence of m-files and functions will generate the impulse response
%functions for the basic hansen model.  Impulse is 1.
mfmodel1ssfind
mfmodel1matrices
[P,Q,R,S]=llinsolve(A,B,C,D,F,G,H,J,K,L,M,N,1);
z=impres(P,Q,R,S,N,[1 6:10 12:13],2,100); %6:10 12:13
%z=impres(P,Q,R,S,N,[2:3 4:5 11],1,100);

% [1:5] acá digo que shockeo todas las variables de mi modelo
% 1 es que shockeo la primer variable estocástica, si tuviese más acá la elijo 
% 100 es de la cantidad de períodos
%6:10 12:13
