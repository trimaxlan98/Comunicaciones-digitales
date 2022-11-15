%Ejercicio 1
%%Tiempo
clc, clear all
Fs=1200*20;
T=1/Fs;
L=1500;
t=(0:L-1)*T;
A=5; 
F=1200;
y=A*sin(2*pi*F*t);
figure(1)
subplot(2 ,1, 1)
plot(t,y,'r')
title('x(t)')
xlabel('Tiempo')
ylabel('Ammplitud');
xlim([0 0.02])

%%Fourier
f=Fs*(0:(L/2))/L;
Y=fft(y);
P2=abs(Y/L);
P1=P2(1:L/2+1)*2;
figure(1)
subplot(2 ,1, 2)
plot(f,P1,'r')
title('|X(f)|')
xlabel('Frecuencia Hz')
ylabel('Magnitud');
xlim([0 2000])
grid on

 %yf=fftshift(fft(y,10000))*T;
 %w=linspace(-Fs/2,Fs/2,10000)*2*pi;
 %figure (3)
 %plot(w/(2*pi),abs(yf));

 %xlim([-2300 2300])
 %grid on
