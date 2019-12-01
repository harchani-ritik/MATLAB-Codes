t=-10:0.01:10;
T=2;
x=@(t)square(t);
q1=(integral(x,0,2))/T; % a0 is equal to q
q2=(integral(x,0,2))/T;

