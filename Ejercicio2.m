%ejercicio 3
clc, clear
Fs=1000;
ts=1/Fs;
%rng(0,'twister');
%a = 1;
b = sqrt(0.1);
%y = a.*randn(1000,1) + b;
%n = random('norm',0,b,1000,1); 
m = 0 + b*randn(1000,1); 

%figure(1)
%plot(y)
%grid on
%figure(2)
%plot(n)
%grid on
figure(1)
subplot(2 ,1, 1)
plot(m,'r')
%title('y(t)')
xlabel('Tiempo')
ylabel('Ammplitud');
ylim([ -2 2])
grid on
%Media y Varianza
stats = [mean(m) var(m)]
%%Transformada
L=length(m);%Dimension de la funcion
f=Fs*(0:(L/2))/L;
Y=fft(m);
P2=abs(Y/L);
P1=P2(1:L/2+1)*2;
figure(1)
subplot(2 ,1, 2)
plot(f,P1,'r')
%title('Transformada de Fourier señal aleatoria con distribucion Gaussiana');
xlabel('Frecuencia Hz');
ylabel('Magnitud');
grid on


%stats = [mean(y) std(y) var(y)]
%stats = [mean(n) std(n) var(n)]


%Dominio de la frecuencia

%yf=fftshift(fft(m,10000))*ts;
%w=linspace(-fs/2,fs/2,10000)*2*pi;
%figure (4)
%plot(w/(2*pi),abs(yf));
%title('Transformada de Fourier señal aleatoria con distribucion Gaussiana')
%xlabel('Frecuencia')
%ylabel('Ammplitud');
%grid on

 %yf=fftshift(fft(m,10000))*ts;
 %w=linspace(-fs/2,fs/2,10000)*2*pi;
 %figure (6)
 %plot(w/(2*pi),abs(yf));
 %grid on