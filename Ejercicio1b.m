%Ejercicio 1 inciso B
clc, clear
T=0.1;
fre=10;
fs=fre*100;
ts=1/fs;
tao=0.025;
L=1000;
t=(0:L-1)*ts;
%L1=1200;%Longitud de la funcion
x=@(t) (t>=-1/2 & t<=1/2);
xn=0;
for n=-100:100
    xn=xn+x((t-T*n)/tao);
end
%xp= x(t-n);
figure(1)
subplot(2,1,1)
plot(t,xn,'r')
%xlim([0 0.1])
ylim([-0.5 1.5])
title('x(t)')
xlabel('Tiempo')
ylabel('Ammplitud');
grid on

%Dominio de la frecuencia
%L=length(xn);%Dimension de la funcion
%nFFT=2; %Contador para la transformada rapida de fourier 
%while nFFT<L
%    nFFT=nFFT*32;
%end
%Y=fft(xn,nFFT);%Funcion de la transformada de Fourier 
%PS= abs(Y); %Periodograma simple
%f=linspace(0,fs,nFFT);
%figure(2)
%plot(f,PS)
%%
f=fs*(0:(L/2))/L;
Y=fft(xn);
P2=abs(Y/L);
P1=P2(1:L/2+1)*2;
figure(1)
subplot(2,1,2)
plot(f,P1,'r')
%xlim([0 5e-4])
ylim([0 0.5])
%title('Transformada de Fourier del pulso rectangular')
title('|X(f)|')
xlabel('Frecuencia Hz')
ylabel('Magnitud');
grid on
%%
 %yf=fftshift(fft(xn,10000))*ts;
 %w=linspace(-fs/2,fs/2,10000)*2*pi;
 %figure (2)
 %plot(w/(2*pi),abs(yf));
 %title('Transformada de Fourier del pulso rectangular')
%xlabel('Frecuencia')
%ylabel('Ammplitud');
 %grid on
