% LQR Generator
ad = 2;
atheta = .5;
agamma = .0001;
beta = 1;
L = 1.5;
U = .1;
Tau = 3.5;
Q = eye(3) .* [ad;atheta;agamma];
R = beta;
A = [0 U 0; 0 0 U/L; 0 0 -1/Tau];
B = [0;0;1/Tau];
[K,~,~] = lqr(A,B,Q,R)
Kd = K(1);
Ktheta = K(2);
Kgamma = K(3);
