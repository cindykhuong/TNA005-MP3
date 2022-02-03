%Runge-kutta metod
function [t,y] = rk2(ysys,a,y0,n)
h = (a(2)-a(1))/n;
y(1,:) = y0;
t(1) = a(1);

for k = 1:n %går från 1 till n
    k1 = h*ysys(t(k),y(k,:))';
    k2 = h*ysys(t(k)+h/2, y(k,:) + k1/2)';
    %y(k,:)
    y(k+1,:) = y(k,:) + (k1 + k2)/2;
    t(k+1) = a(1) + h*k;
end
end

    
