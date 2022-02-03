function y = vinkel(t)

if t >= 0 && t <= 1.4
    y = -pi/2;
elseif t >= 1.4 && t <= 2.0
    y = 3*pi/4;
elseif t > 2.0 && t <= 2.55
    y = pi/2;
elseif t > 2.55 && t <= 3.1
    y = 5*pi/6;
elseif t > 3.1 && t <= 3.3
    y = 2*pi;
elseif t > 3.3 && t <= 10
    y = 11*pi/6;
end

% if t >= 0 && t <= 1.25
%     z = -pi/2;
% elseif t > 1.25 && t <= 1.55
%     z = 7*pi/6; 
% elseif t > 1.55 && t <= 2.55
%     z = 2*pi/3; 
% elseif t > 2.55 && t <= 3.4
%     z = pi/7; 
% elseif t > 3.4 && t <= 3.9
%     z = 11*pi/6;
% elseif t > 3.9 && t <= 10
%     z = 5*pi/3;
% end

end
