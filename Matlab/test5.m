syms t  n;
w0 = pi;
t0 = 2;
n = 1:100;
a0 = (1/t0)*(int(t,t,0,1)+int(2-t,t,1,2));
an = (2/t0)*(int(t*cos(n*w0*t),t,0,1)+(int((2-t)*cos(n*w0*t),t,1,2)));
bn = (2/t0)*(int(t*sin(n*w0*t),t,0,1)+(int((2-t)*sin(n*w0*t),t,1,2)));
t1 = 0:0.01:10;
y = .5+.5*sawtooth(2*pi*0.5*t1, .5);
m = 1;
for r=[1 10 20 50]
    sum=a0;
    for j=1:2:r
        sum=sum+(an(j))*cos(n(j)*w0*t1)+(bn(j))*sin(n(j)*w0*t1);
    end
subplot(2,4,m);
m = m+1;
plot(t1,sum,t1,y);
xlabel('time');
ylabel('sum');
legend('Fourier Series','Triangular Wave');
subplot(2,4,m);
m = m+1;
plot(t1,sum-y);
xlabel('time');
ylabel('Difference');
legend('Gibbs Phenomenon');
end

