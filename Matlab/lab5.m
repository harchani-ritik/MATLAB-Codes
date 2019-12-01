t=0:.01:10;
x=zeros(size(t));
h=zeros(size(t));
subplot(4,1,1);
x(t>=0 & t<=1)=1;
a=fft(x);
plot(t,x);
subplot(4,1,2);

h(t>=0 & t<=0.5)=1;
b=fft(h);
plot(t,h);
subplot(4,1,3);
y=a.*b;
plot(t,y);
subplot(4,1,4);
z=ifft(y);
plot(t,z);