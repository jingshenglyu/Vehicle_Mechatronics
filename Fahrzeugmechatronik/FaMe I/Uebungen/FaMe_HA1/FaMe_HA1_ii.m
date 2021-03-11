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
v_switch = 10; %Angabe in km/h
t_hold = 5;

L = 0.001;
Ue = 12.508; %Spannung für 10 km/h bei 0% Steigung
R = 5;
kM = 0.1;
kV = 0.0005;
sim('FaMe_HA1_Model');

%figure
%plot(Ia);