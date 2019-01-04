clear all; close all;

% Valeur de la viscosite cinematique :
nu = 1e-3;

% Discretisation de l'espace avec 100 points entre 0 et 2 :
x = linspace(0, 1, 100);

% Definition des instants auxquels on souhaite tracer le profil :
t = [0.5 2 5 10 20 50 100];

% Trace le profil pour les differents instants :
figure
hold on
for n=1:length(t)
  plot(x, erfc(x/sqrt(4*nu*t(n))), 'b');
end
xlabel('x'); ylabel('v(x, t) / U_1');

% Trace la fleche du temps :
arrowline([0.05,0.5],[0.05,0.5], 'color', 'k');
text(0.5, 0.55, 'temps t :', 'Color', 'k');

% On affiche les instants sur la figure :
text(0.65, 0.55, num2str(t'), 'color', 'k');
line([0.63 0.63], [0.4, 0.7], 'color', 'k');

% On sauvegarde la figure sur le disque :
print(gcf, 'profils.pdf', '-dpdf');  % format PDF
print(gcf, 'profils.eps', '-deps');  % format Postscript encapsule
print(gcf, 'profils.jpg', '-djpeg'); % format JPEG


