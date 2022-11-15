clc, clear all, close all

%Dominio del tiempo
f=1200;
A=5;
fmax=f;
fs= 20*fmax;%El teoria dice 10 
ts= 1/fs;
t=0:ts:0.125;

x=A*sin(2*pi*f*t);
figure(1)
plot(t,x)
ylim([-6 6]), xlim([0 0.02])
grid on

%Dominio de la frecuencia
%L=length(x);%Dimension de la funcion
%nFFT=2; %Contador para la transformada rapida de fourier 
%while nFFT<L
%    nFFT=nFFT*32;
%end
%Y=fft(x,nFFT);%Funcion de la transformada de Fourier 
%PS= abs(Y); %Periodograma simple
%f=linspace(0,fs,nFFT);
%figure(2)
%plot(f,PS)
%ylim([-1 1]), xlim([-1500 1500])
%axis([0 fs/2 0 max(PS)])
L=length(x);
%OtrA FORMA TRANS FOURIER
 yf=fftshift(fft(x,10000))*ts;
 w=linspace(-fs/2,fs/2,10000)*2*pi;
 figure (2)
 plot(w/(2*pi),abs(yf));
