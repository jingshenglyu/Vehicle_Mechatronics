%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Uebung 3
% Gruppe 12
%
%
%
%
% 5.  Jingsheng Lyu  398756
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%  Aufgabe 1 Auslegung eines Ultraschallsensors

%%  a) sieht PDF-Datei

% die gegebene Parameter

% Fahrzeug- und SensorenParameter
clear;
clc;

d_s = 0.012; % Durchmesser eines Sensors [m]
x_s = 0.4;   % Abstand zwischen jeweils zwei Sensoren [m]
n_ss = 4; % Anzahl der Sensoren im Stossfaenger

% Umgebungsdaten

M = 0.02896; % Molare Masse von Lusft [kg/mol]
R = 8.3145; % Allgemeine Gaskonstante  [J/(molK)] 
k = 1.402; % Adiabatenexponent k = c_p/c_v
T_ge_Um = 42+273.15; % Vom Fahrzeug gemessene Umgebungstemperatur [°„C]
T_re_Um = 22+273.15; % Reale Umgebungstemperatur [°„C]
c1 = sqrt(k*R*T_re_Um/M); % Schallgeschwindigkeit c in Luft bei Normaldruck bei realer Umgebungstemperatur [m/s]
c2 = sqrt(k*R*T_ge_Um/M);  % Schallgeschwindigkeit c in Luft bei Normaldruck bei gemessener Umgebungstemperatur [m/s]
T_min40 = -40+273.15;
c3 = sqrt(k*R*T_min40/M);
%%  b)

x_min = 0.3;
x_s = 0.4;
alpha_1 = atan(x_s/(2*x_min));
D = 0.012;
L = D*sin(alpha_1)/0.51;
f = c3/L;

%%  c) sieht PDF-Datei

%%  d) 
% 
% x_mins = 3; % Mindestreichweite der Sensoren bei einer Mindesttemperatur von -40°„C [m]
% delta_t_m40 = 2*x_min/v_s; % die Zeit von -40°„C zur Erkennung eines 3m entfernten Objekts [s]
% f_m40 = 1/delta_t_m40; % Triggerfrequenz fuer die Freigabe der Sendeimpulse des Sensors
s_1 = 3;
t_min40 = 2*s_1/c3; 
f_min40 = 1/t_min40;
%%  e) 
 
Ab_1 = abs(( c1 - c2 ) / c1)*100;  % Abweichung der realen Schallgeschwindigkeit [%]
% Ab_2 = ( c1 - c2 ) / v_s*100;  % Abweichung der gemessenen Schallgeschwindigkeit [%]

%%  f) sieht PDF-Datei



%% Aufgabe 2 Potentiometrischer Wegaufnehmer

%% a ) 

% Sieht PDF-Datei

%% b)
% Parameter 

k_T20 = 2; % Elektrische Leitfaehigkeit bei 20 °„C [m/¶∏mm^2]
n_Wi = 2000; % Anzahl der Wicklungen
d_K = 0.02; % Durchmesser des Keramikkoerpers [m]
l_K = 0.45; % Laenge des Keramikkoerpers [m]
d_D = 0.2; % Duchmesser des Drahts [m]
b_S = 0.0006; % Breite des Schleifers [m]
%%
alpha = 1e-5; 
A_Weg = pi * (d_D/2)^2;
kk = 2;
n=2000;
l_Weg = pi*d_K;
R_Weg = l_Weg/(kk*A_Weg);
R_ges = n*R_Weg;

%% c)

Aufloesung = l_K/n; %[m]
delta_R = R_ges/n;
delta_thete = delta_R/(R_ges*alpha); % [K]

%% Aufgabe 3

% a)
% b) sieht PDF-Datei

%% c)
UA_ohne = 0.008;
UA_mit = 0.00863;
UE = 5;
nue = 0.3;
k_Faktor = 2.05;
E = 2.1e5;
a = 5;
b = 5;
epsilon_1 = -(UA_ohne/UE)*2*(1/((1+nue)*k_Faktor));
epsilon_2 = -(UA_mit/UE)*2*(1/((1+nue)*k_Faktor));
A = a*b;
g = 9.81;
m_ohne = abs(A*epsilon_1*E/g);
m_mit = abs(A*epsilon_2*E/g);
delta_m = abs(m_mit-m_ohne);

%% d) 

% sieht PDF-Datei

%% e)

% Massenfehler_1 = ((UA_ohne*(1-nue)+UE*(1+nue))/(UE*(1+nue))-1)*100
% Massenfehler_2 = ((UA_mit*(1-nue)+UE*(1+nue))/(UE*(1+nue))-1)*100

% m_genau = -(2*UA_mit*A*E)/(k_Faktor*g*(UA_mit*(1-nue)+UE*(1+nue)))

delta_U=0.00063;
m_genau = abs((-2*delta_U*A*E)/(k_Faktor*g*(UE*(1+nue)+delta_U*(1-nue))));
m_vereinfach = abs((-2*delta_U*A*E)/(UE*k_Faktor*g*(1+nue)));
Massenfehler = ((m_vereinfach/m_genau)-1)*100;















