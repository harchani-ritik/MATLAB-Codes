t=-2:0.01:2;
u(t>=0)=1;
d=sin(y).*u
plot(t,d)
ylim([-3,3])