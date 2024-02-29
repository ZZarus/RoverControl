% Path tracking simulation
% generate a 2D path of points
% flat path
x = linspace(0,15);
y = linspace(0,0);
kd = 1;
kt = 2.31;
kg = .44;
U = .1;
tauMax = 3.5;
gamma = -45;
gammaP = 45;

% x, y, dx, dy
ic = [0 10 0 0];

