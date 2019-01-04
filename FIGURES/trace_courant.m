clear all; close all; clc;

fprintf('\n Trace les lignes de courant pour l''ecoulement defini \n')
fprintf(' par la fonction de courant psi(x, y) = a x^2 + b y^2 \n\n')

% Valeur des paramètres a et b :
a = input(' a = ');
b = input(' b = ');

% Maillage de l'espace avec 100 points entre -1 et 1 en x et y :
[x, y] = meshgrid(linspace(-1, 1, 100), linspace(-1, 1, 100));

% Definition de la fonction de courant :
psi = a*x.^2+b*y.^2;

% Trace 10 lignes de courant psi=constante :
contour(x, y, psi, 10, 'r');
xlabel('x'); ylabel('y');
axis equal tight

% On peut aussi tracer le champ de vitesse sur un maillage moins fin
[x, y] = meshgrid(linspace(-1, 1, 10), linspace(-1, 1, 10));
ux =  2*b*y;
uy = -2*a*x;
hold on
quiver(x, y, ux, uy, 'Color', 'b');

% On sauvegarde la figure sur le disque :
print(gcf, 'streamlines.pdf', '-dpdf');  % format PDF
print(gcf, 'streamlines.eps', '-deps');  % format Postscript encapsule
print(gcf, 'streamlines.jpg', '-djpeg'); % format JPEG


