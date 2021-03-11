%
% Signalverarbeitung
% Gruppe 12
%

clear;
clc;

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



