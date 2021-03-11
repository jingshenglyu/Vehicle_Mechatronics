clear all;
clc;

%Zeitvektor (Messung)
x = [1;2;3;4;5];
%Zeitvektor (Fein)
t = min(x):0.1:max(x);
%Messwertevektor
y = [0.8;1.8;5;4;5.3];

%% Ausgleichsgerade
%A-Matrix des Gleichungssystems für die Ausgleichsgerade
Mg = [x.^0 x.^1];
%Transponierte der A-Matrix
Mt = transpose(Mg);
%Auflösung der Gleichung nach a-Vektor (mit a0 und a1)
ag = (Mt*Mg)^(-1)*Mt*y;
%a-Vektor muss für Auswertung mit "Polyval" umgekehrt werden
ag = flipud(ag);

%% Ausgleichspolynom
%A-Matrix des Gleichungssystems für das Ausgleichspolynom 2ten-Grades
Mp = [x.^0 x.^1 x.^2];
%Transponierte der A-Matrix
Mt = transpose(Mp);
%Auflösung der Gleichung nach a-Vektor (mit a0, a1 und a2)
ap = (Mt*Mp)^(-1)*Mt*y;
%a-Vektor muss für Auswertung mit "Polyval" umgekehrt werden
ap = flipud(ap);

%% Grafische Darstellung
%Erstellen eines Fensters für den Plot
figure(1)
hold on
grid on
%alle drei Kurven werden (mit unterschiedlichen Farben) gezeichnet
plot(x,y,'Color','b');
%für die Ausgleichsgerade und das Ausgleichspolynom wird zur feineren
%Darstellung t als x-Vektor verwendet, die entsprechenden Funktionswerte
%gibt die Funktion polyval mithilfe der Parameter an aus
plot(t,polyval(ag,t),'Color','r');
plot(t,polyval(ap,t),'Color','g');
legend('Messdaten','Gerade','Polynom','Location','southeast');
