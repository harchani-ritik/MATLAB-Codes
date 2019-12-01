t1 = 0:0.01:10;
x(t1<0) = 0;
x(t1>=0) = 1;
x(t1>=1) = 0;
subplot(3,2,1);
plot(t1,x);
ylim([0 5]);

h(t1<0) = 0;
h(t1>=0) = 1;
h(t1>=0.5) = 0;
subplot(3,2,2);
plot(t1,h);
ylim([0 5]);

t = 0:0.01:20;
y = conv(x,h);
subplot(3,2,3);
plot(t,y);

xf = fft(x);
subplot(3,2,4);
plot(t1,xf);

hf = fft(h);
subplot(3,2,5);
plot(t1,hf);

yf = xf.*hf;
z = ifft(yf);
subplot(3,2,6);
plot(t1,z);



