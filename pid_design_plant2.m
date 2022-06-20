%% 
clear
clc
close all

%% Calculate Kp,Ki,Kd data
s = tf('s');
C_PID = (6.62 * (s + 4.55) * (s + 0.1)) / s;

[Kp,Ki,Kd,Tf] = piddata(C_PID)