%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Technische Universitaet Berlin
% Fakultaet Verkehrs-  und Maschinensystem 
% Fachgbiet Kraffahrzeuge
% M.Sc. Osama Al-Saidi
% 
% Fahrzeugmechatronik I: Ueung - Active Body Control (ABC)
% File: Parameter 
% Datum: 16.11.2015
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
clc


% Parameter:

g = 9.81;           % Erdbeschleunigung [m/s^2]

%####### OEL #######
rho = 880;                  % Dichte [kg/m^3]


%####### VENTIL #######
m_va = 0.1;                 % Kolbenmasse [kg]
A_va = pi*0.01^2 /4;        % Kolbenflaeche [m^2]

alpha_K_blende = 0.6;       % Durchflusszahl Blende
alpha_K_va = 0.6;           % Durchflusszahl Ventil

A_blende = pi*0.001^2 /4;   % Flaeche der Blende der Kolbendaempfung [m^2] 
delta_y_s = 0.005;            % Positive Ueberdeckung [m]
s_max_va = 0.020;           % max Kolbenauslenkung [m]

bore_max = 20e-6;           % max Ventilöffnungsquerschnitt   [m^2] 
 
% Daempfung
d = 59;             % Daempfungskonstante des Ventils [Ns/m]

% Magnet (Antrieb)
Km =1;              % Faktor des Elektromagneten [N/A]
L = 1e-5;           % Induktivitaet der Spule [H]
R = 1.2;            % Ohmscher Widerstand der Spule [Ohm]
U_vorst = 2.4;      % Vorsteuerspannung [V]
   

%####### ZYLINDER #######
D_kolben = 0.02;                      % [m] Kolbendurchmesser
A_cyl = pi*(D_kolben^2)/4;            % [m^2] Kolbenflaeche



%####### Viertelfahrzeug #######
m_A = 200;          % Anteilige Aufbaumasse  [kg] 
m_R = 40;           % Radmasse  [kg]
c_A = 19000;        % Federkonstante der Aufhaengung [N/m]
d_A = 1100;         % Dämpfungskonstante  der Aufhaengung [Ns/m]
c_R = 190500;       % Federkonstante des Rades [N/m]
z_A_max = 0.3;      % max. (relativer) Hub des Aufbaus [m]
z_A_0 = -0.115;     % Anfangswert fuer Aufbau [m]
z_R_0 = -0.0124;    % Anfangswert fuer Rad [m]



%####### PUMPE #######
P_pump = 150e5;     %[pa] von Pumpe zur Verfuegung gestellter konst. Oeldruck





