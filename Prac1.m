clc , clear

%%Ejercicio 1
f= 1200;
fs=1000;
ts=1/fs;
t=-0.1:ts:0.1;
a=5;
x1= a*cos( 2*pi*t*f);
figure(1)
plot(t,x1)
grid on, ylim([-6 6]), xlim([-0.1 0.1])

w=(-1200:0.1:1200)*2*pi;

X1=0;
n=0;

for tt=t
    n=n+1;
    X1=X1+x1(n)*exp(-j*w*tt)*ts;
    
end
figure (2)
plot(w/(2*pi),abs(X1));
%grid on, ylim([0 6]), xlim([-10 10])

%%Ejercicio 2
T=0.1;
tao = 0.025;
%x2=

