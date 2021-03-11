%%%%%%%%%%%%%%%%%%%%%%%%%
% Uebung 1                                                      %
% Gruppe 12                                                     %
% Jingsheng Lyu: 398756                                   %
% Michaele                                                        %
% Timo                                                             %
% Tom                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%

figure
% Autonome System Definition
x1 = [-10:10];
x2 = [-10:10];
[x1_dot, x2_dot] = meshgrid(-10:1:10, -10:1:10); 

x1_dot = -0.5 * x1 + 0 * x2;
x2_dot = -4.5 * x1 + 4 * x2;

% plot quiver
quiver(x1, x2, x1_dot, x2_dot);

% plot das Phasenportrait
xlabel('x')
ylabel('y')
title('Phasenportrait fuer das autonome System')
xlim([-10 10])
ylim([-10 10])
grid on 



