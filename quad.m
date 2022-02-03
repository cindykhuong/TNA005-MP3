function x = quad(a,b,c)

% Om vi har reella rötter 
if b^2 >= 4*a*c
    % Ja, vi har reella rötter
    % Beräkna de reella rötterna enligt given formel
    x(1) = (-b+sqrt(b^2-4*a*c))/(2*a);
    x(2) = (-b-sqrt(b^2-4*a*c))/(2*a);
    
else
    % Nej, Om vi har komplexa rötter
    %Om vi inte har reella rötter ska enligt strängen returneras
    x = 'Ekvationen har inga reella rötter';
end

end 