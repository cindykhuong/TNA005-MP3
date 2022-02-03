function dz = kast(t,z)

c = 0.05; %kg/m: konstanten f�r luftmotst�nd
g = 9.81; %m/s^2: tyngdaccelerationen
k = 1200; %m/s : konstant fart f�r masspartiklarna

%raketens massfunktion m1 = m(t) och dess derivata m2 = m'(t)
[m1, m2] = massa(t);

%hastighetsvektorn - d�r vinkeln �r beroende p� tiden
% Ux & Uy: styra raketen i en �nskad bana.

Ux = k*cos(vinkel(t));
Uy = k*sin(vinkel(t));

%Till�mpning av Newtons lagar f�r att styra en raket
%z1 = x, z2 = x', z3 = y, z4 = y'
dz = [z(2)
    (-c/m1)*sqrt(z(2)^2+z(4)^2)*z(2)+(m2/m1)*Ux
    z(4)
    (-c/m1)*sqrt(z(2)^2+z(4)^2)*z(4)+(m2/m1)*Uy-g];
end