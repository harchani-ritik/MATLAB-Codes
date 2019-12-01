t=-2:0.01:2;
f=1*cos(2*pi*10*t+pi/3);
g=2*cos(2*pi*0.5*t+pi/4);
h=1*cos(2*pi*20*t+pi/3);
k=f+g-h;
plot(t,k)
ylim([-3,3])