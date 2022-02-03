function dz = kast(t,z)

c = 0.05; %kg/m: konstanten för luftmotstånd
g = 9.81; %m/s^2: tyngdaccelerationen
k = 1200; %m/s : konstant fart för masspartiklarna

%raketens massfunktion m1 = m(t) och dess derivata m2 = m'(t)
[m1, m2] = massa(t);

%hastighetsvektorn - där vinkeln är beroende på tiden
% Ux & Uy: styra raketen i en önskad bana.

Ux = k*cos(vinkel(t));
Uy = k*sin(vinkel(t));

%Tillämpning av Newtons lagar för att styra en raket
%z1 = x, z2 = x', z3 = y, z4 = y'
dz = [z(2)
    (-c/m1)*sqrt(z(2)^2+z(4)^2)*z(2)+(m2/m1)*Ux
    z(4)
    (-c/m1)*sqrt(z(2)^2+z(4)^2)*z(4)+(m2/m1)*Uy-g];
end