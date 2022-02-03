function [m1, m2] = massa(t)

m = 15; % kg: initiala raketmassa
%t = 10; % sek

if t >= 0 && t <= 10
    m1 = m-t;
    m2 = -1;
    
elseif t > 10
    m1 = 5;
    m2 = 0;

end
end

