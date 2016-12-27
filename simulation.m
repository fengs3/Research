syms u v p q phi theta;
syms a b c d e f g h;
syms fx fy tx ty;
X=[u; v; p; q; phi; theta];
A=[a 0 0 0 0 -g; 
    0 a 0 0 g 0; 
    b c d e 0 0; 
    -c b -e d 0 0;
    0 0 1 0 0 0;
    0 0 0 1 0 0];
B=[f 0 0 0; 0 f 0 0; 0 0 h 0; 0 0 0 h; 0 0 0 0; 0 0 0 0];
U=[fx;fy; tx; ty];
x_dot = A*X+B*U;
%Angled Motor
syms ku kp kq kphi ktheta;
u=ku;
v=0;
c=0;
tx=0;
ty=0;
p=kp;
q=kq;
phi=kphi;
theta=ktheta;
x_dot_AM=[a 0 0 0 0 -g; 0 a 0 0 g 0; b 0 d e 0 0; 
    -c b -e d 0 0;0 0 1 0 0 0; 0 0 0 1 0 0]*[ku;0;kp;kq;kphi;ktheta]+B*[fx;fy;0;0];
%offset motor


