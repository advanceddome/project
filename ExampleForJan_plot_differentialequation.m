%define abstract symbolic variable x and symbolic function y(t)
syms y(t)
a = 2;
%define f as function of symbolic variable x

%Specify a differential equation (called "eqn" here) by using == and represent differentiation by using the diff function.
%Here diff(y,t) = dy/dt . So we are solving dy/dt = a*y.

eqn = diff(y,t) == a*t;

%differentiate f(x) with respect to t
solution = dsolve(eqn);

%Our solution looks like " y = C1exp(a*t)
%NOTE: Solution is STILL an symbol. This means we cannot use the normal plot function. And we have the constant C1 so we
%can't plot the equation

%Let's try solving it again this time by specifying initial values

%differentiate f(x) with respect to t
solution = dsolve(eqn,'y(0) = 1', 't');
fplot(solution)