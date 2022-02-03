function x = quad(a,b,c)

% Om vi har reella r�tter 
if b^2 >= 4*a*c
    % Ja, vi har reella r�tter
    % Ber�kna de reella r�tterna enligt given formel
    x(1) = (-b+sqrt(b^2-4*a*c))/(2*a);
    x(2) = (-b-sqrt(b^2-4*a*c))/(2*a);
    
else
    % Nej, Om vi har komplexa r�tter
    %Om vi inte har reella r�tter ska enligt str�ngen returneras
    x = 'Ekvationen har inga reella r�tter';
end

end 