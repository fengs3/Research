syms p q;
syms s;
syms a b c d e f g;
%laplace of state transition matrix A
A=[c*g/(s*(s-a))+d b*g/(s*(a-s))+e;
   b*g/(s*(s-a))-e -c*g/(s*(a-s))+d];
x=[p;q];
dx=[s*p;s*q];
I=[1 0; 0 1];
%matrix inverse method
%determinant of [sI ? A]
deta=det(s*I-A);
%check determinant =0
[N,D] = numden(deta);
coeffs(N,s)
%missing one bracket in paper
