t=-2:0.01:2;
u(t>=0)=1;
r=u.*t;
plot(t,r)
ylim([-3,3])