%
% Signalverarbeitung
%
%--------------------------------------------------------
% Gruppe 12
% Jingsheng Lyu 398756
%
%
%
%
%--------------------------------------------------------
%
clear;
clc;


%% Aufgabe 1:Ausgleichsrechnung

x1 = [1:5]; % [s] Zeit
y1 = [0.8 1.8 5 4.0 5.3];% Messwert

p1 = polyfit(x1,y1,1); % Ausgleichgerade - 1. Ordnung
% Koeffizienten von Ausgleichgerade a1 bis a3 zu bestimmen
a1_gerade = p1(:,1)
a2_gerade = p1(:,2)
a3_gerade = 0

p2 = polyfit(x1,y1,2); % Ausgleichparabel - 2. Ordnung
% Koeffizienten von Ausgleichgerade a1 bis a3 zu bestimmen
a1_parabel = p2(:,1)
a2_parabel = p2(:,2)
a3_parabel = p2(:,3)

x2 = [1:0.01:5]; % neues Zeitvektor

y2_1 = polyval(p1,x2); % Gleichung von Ausgleichgerade
y2_2 = polyval(p2,x2); % Gleichung von Ausgleichparabel

% Messwert, Ausgleichgerade, Ausgleichparabel zu plotten
figure(1)
plot(x1,y1,'-',x2,y2_1,'--',x2,y2_2,'-.')
grid on
xlabel('Zeit [s]')
ylabel('Wert f')
title('Signalverarbeitung')
legend({'Messerte','Ausgleichgerade','Ausgleichparabel'},'Location','northwest')
print('Signalverarbeitung','-dpng')

%% Aufgabe 3: Lineare Splines

xi = [-1 0 1 2]; % xi
fi = [2 1 1 3]; % Funktion f(x)

xi_neu = [-1:0.1:2]; % neu xi, Intervallen = 0.1
P_x = interp1(xi,fi,xi_neu,'spline'); % linearer Spline Interpolation

% Skizzieren das Ergebnis
figure(2)
plot(xi,fi,'o',xi_neu,P_x,':.');
grid on
xlabel('x_i')
ylabel('f(x_i)')
title('Spline Interpolation')
legend('ohne Spline','mit Spline')
print('Spline Interpolation','-dpng')



