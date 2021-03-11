clear all;
clc;

r_dyn = 0.06;
m = 20;
g = 9.81;
J = 0.0015;

rho = 1.2;
cw = 0.8;
A = 0.3;

f = 0.04;
alpha = 5;   %Angabe in Prozent

%Angaben für den Steigungssprung in c) ii.
v_switch = 0; 
t_hold = 0;

L = 0.001; 
%Ue = 19.9825; %Spannung für 12 km/h bei 5% Steigung ohne Verluste
Ue = 21.375; %Spannung für 12 km/h bei 5% Steigung mit Verlusten
R = 5;
kM = 0.1;
kV = 0.0005;
sim('FaMe_HA1_Model');