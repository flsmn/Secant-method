
% Funktion zur Berechnung von Nullstellen der Funktion fkt mit Sekantenverfahren
% Anfangswerte x0 und x1

function [retval] = Sekanten(fkt, x0 , x1, eps)
 x(1) = x0;
 x(2) = x1;
 n = 2;
 i = 1;

 % Durchgang des Sekantenverfahren mit Abbruchkriterium eps
 
 while (abs((x(n) - x(n-1))) >= eps)
  x(n+1) = x(n) - (x(n) - x(n-1)) / (fkt(x(n)) - fkt(x(n-1))) * fkt(x(n));
  n = n+1;
  i = i+1;
 end
 retval = x(n);
 disp(i); % Ausgabe Iterationsschritte
end

