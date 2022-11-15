%Ejercicio 3
clc , clear all
fs=100000;
ts=1/fs;
L=1000;
t=(0:L-1)*ts;
A=5;
F1=2000; F2=4000; F3=8000; F4=10000;
y=A*cos(2*pi*F1*t)+A*cos(2*pi*F2*t)+A*cos(2*pi*F3*t)+A*cos(2*pi*F4*t);
figure(1)
subplot(2,1,1)
plot(t,y,'r');
xlim([0 , 0.005])
ylim([-30 30])
title('y(t)')
xlabel('Tiempo')
ylabel('Ammplitud');
grid on
%  freqz(b,a)

f=fs*(0:(L/2))/L;
Y=fft(y);
P2=abs(Y/L);
P1=P2(1:L/2+1)*2;
figure(1)
subplot(2,1,2)
plot(f,P1,'r')
xlim([0 11000])
title('|Y(f)|')
xlabel('Frecuencia Hz')
ylabel('Magnitud');
grid on

fc = 6000;
Wn=fc/(fs/2);
[num,den] = butter(5,Wn,'low');

Fsignal = filter(num, den , y);
figure(2)
subplot(2,1,1)
plot(Fsignal,'r')
title('y(t)')
xlabel('Tiempo')
ylabel('Ammplitud');
grid on

f2=fs*(0:(L/2))/L;
Y=fft(Fsignal);
P22=abs(Y/L);
P12=P22(1:L/2+1)*2;
figure(2)
subplot(2,1,2)
plot(f2,P12,'r')
xlim([0 11000])
grid on
title('|Y(f)|')
xlabel('Frecuencia Hz')
ylabel('Magnitud');
 %yf=fftshift(fft(y,10000))*ts;
% w=linspace(-fs/2,fs/2,10000)*2*pi;
 %figure (2)
 %plot(w/(2*pi),abs(yf));
 %grid on
 
 %y2=fft(y,1024);
 %frecuencia=((0:10023)/10023)*fs;
 %figure(4)
 %plot(abs(y2))
