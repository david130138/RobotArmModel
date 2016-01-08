function f34_syms = f34_fun(x1,x2,x3,x4,tau1,tau2)
%F34_FUN
%    F34_SYMS = F34_FUN(X1,X2,X3,X4,TAU1,TAU2)

%    This function was generated by the Symbolic Math Toolbox version 5.10.
%    07-Jan-2016 20:52:07

t2 = x2.*2.0;
t3 = cos(x2);
t4 = sin(x2);
t5 = cos(t2);
t6 = t5.*9.0;
t7 = t6-3.1e1;
t8 = 1.0./t7;
t9 = tau1.*8.0;
t10 = t2+x1;
t11 = cos(t10);
t12 = t11.*1.5e1;
t13 = cos(x1);
t14 = sin(t2);
t15 = x4.^2;
t16 = t4.*t15;
t17 = t4.*x3.*x4.*2.0;
f34_syms = [t8.*(t9+t12-t13.*6.5e1+t16+t17-tau2.*8.0-x3.*1.6e1+x4.*1.6e1-t3.*tau2.*2.4e1+t3.*x4.*4.8e1+t4.*x3+t14.*x3.*(3.0./2.0)).*-6.0;t8.*(t9+t12-t13.*6.5e1+t16+t17-tau2.*1.68e2-x3.*1.6e1+x4.*3.36e2-cos(x1-x2).*1.2e2+cos(x1+x2).*8.0e1+t14.*t15.*(3.0./2.0)+t3.*tau1.*2.4e1-t3.*tau2.*4.8e1-t3.*x3.*4.8e1+t3.*x4.*9.6e1+t4.*x3.*2.1e1+t14.*x3.*3.0+t14.*x3.*x4.*3.0).*6.0];