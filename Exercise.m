close all;
clear all;
clc;

load('./Measurement/data.mat');
% Sampling frequency: 10 Hz
Fs=10;                          %sampling rate: Hz
T=5;                            %measure time duration: s
Ns=Fs*T;                      % total number of the samples
f0=Fs/Ns;                     %base frequency
f= [0: f0 : f0*(Ns-1)];     %frequency vector;
t=[0:1/Fs:T-(1/Fs)];
x=data(1:Ns);

dt=1/Fs;
X_discr = fft(x(1:Ns));
X_cont = X_discr*dt;

figure;
plot(t,x);

figure;
loglog(f(1:Ns/2+1), abs(X_cont(1:Ns/2+1)));
xlabel('Frequency (Hz)');
ylabel('Magnitude (|X|)')
grid on;

clear all;
load('./Measurement/data_2.mat');
%Sampling frequency:  20Hz
Fs=20;                          %sampling rate: Hz
T=50;                            %measure time duration: s
Ns=Fs*T;                      % total number of the samples
f0=Fs/Ns;                     %base frequency
f= [0: f0 : f0*(Ns-1)];     %frequency vector;
t=[0:1/Fs:T-(1/Fs)];
x=data_2(1:Ns);

dt=1/Fs;
X_discr = fft(x(1:Ns));
X_cont = X_discr*dt;

figure;
plot(t,x);

figure;
loglog(f(1:Ns/2+1), abs(X_cont(1:Ns/2+1)));
xlabel('Frequency (Hz)');
ylabel('Magnitude (|X|)')
grid on;
