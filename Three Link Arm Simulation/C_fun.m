function C = C_fun(in1)
%C_FUN
%    C = C_FUN(IN1)

%    This function was generated by the Symbolic Math Toolbox version 5.11.
%    06-Mar-2015 16:41:21

x2 = in1(2,:);
x3 = in1(3,:);
x4 = in1(4,:);
x5 = in1(5,:);
x6 = in1(6,:);
t2 = x2+x3;
t3 = sin(t2);
t4 = t3.*(9.0./2.0e2);
t5 = sin(x2);
t6 = t5.*(1.4e1./2.5e1);
t7 = t4+t6;
t8 = sin(x3);
t9 = t8.*(9.0./2.5e2);
t10 = t4+t9;
t11 = x4+x5+x6;
C = reshape([-t7.*x5-t10.*x6,t7.*x4-t8.*x6.*(9.0./2.5e2),t8.*x5.*(9.0./2.5e2)+t10.*x4,-t7.*x4-t7.*x5-t10.*x6,t8.*x6.*(-9.0./2.5e2),t8.*(x4+x5).*(9.0./2.5e2),t11.*(t3.*5.0+t8.*4.0).*(-9.0./1.0e3),t8.*t11.*(-9.0./2.5e2),0.0],[3, 3]);