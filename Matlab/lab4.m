t=0:0.01:10;
x(t<0)=0;
x(t>=0)=1;
x(t>=1)=0;
subplot(1,6,1);
plot(t,x);
ylim([0 5]);

y(t<0)=0;
y(t>=0)=1;
y(t>=0.5)=0;
subplot(1,6,2);
plot(t,y);
ylim([0 5]);

t1=0:0.01:20;
c=conv(x,y);
subplot(1,6,3);
plot(t1,c);
ylim([0 5]);

h(t>=0 & t<=0.5)=1;
b=fft(h);
subplot(1,6,4);
plot(t,h);

y=a.*b;
subplot(1,6,5);
plot(t,y);
ylim([0 5]);


