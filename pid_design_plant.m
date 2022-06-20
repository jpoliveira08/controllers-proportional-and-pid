%% Rlocus for open loop
clear
clc
close all

s = tf('s');
Num = 0.93;
Den = [1 1.93 0.93];
Gsys = tf(Num, Den);
figure(1)
rlocus(Gsys)

%% PD Controller
a = 4.55;
G_PD = Gsys * (s + a);
figure(2)
rlocus(G_PD)

%% Introducing Pi Controller
b=0.1;
G_PID = Gsys * (s + a) * (s + b) / s;
figure(3)
rlocus(G_PID)

%% Simulate response to step
K=6.59;
Gopen = G_PID * K;
Gclosed = feedback(Gopen, 1);
figure(4)
step(Gclosed)



