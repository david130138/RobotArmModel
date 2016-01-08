function C_jac = C_jac_fun(in1)
%C_JAC_FUN
%    C_JAC = C_JAC_FUN(IN1)

%    This function was generated by the Symbolic Math Toolbox version 5.10.
%    07-Jan-2016 20:48:55

x2 = in1(2,:);
x3 = in1(3,:);
x4 = in1(4,:);
x5 = in1(5,:);
x6 = in1(6,:);
t2 = x2+x3;
t3 = cos(t2);
t4 = t3.*(1.0./2.0);
t5 = sin(t2);
t6 = cos(x2);
t7 = t4+t6;
t8 = cos(x3);
t9 = t8.*(1.0./4.0);
t10 = t4+t9;
t11 = sin(x2);
t13 = t5.*(1.0./2.0);
t12 = -t11-t13;
t14 = sin(x3);
t15 = x4+x5+x6;
t17 = t14.*(1.0./4.0);
t16 = -t13-t17;
t18 = t3.*x4.*(1.0./2.0);
C_jac = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t3.*x6.*(-1.0./2.0)-t7.*x5,t7.*x4,t18,t3.*x6.*(-1.0./2.0)-t7.*x4-t7.*x5,0.0,0.0,t3.*t15.*(-1.0./2.0),0.0,0.0,t3.*x5.*(-1.0./2.0)-t10.*x6,t18-t8.*x6.*(1.0./4.0),t8.*x5.*(1.0./4.0)+t10.*x4,t3.*x4.*(-1.0./2.0)-t3.*x5.*(1.0./2.0)-t10.*x6,t8.*x6.*(-1.0./4.0),t8.*(x4+x5).*(1.0./4.0),t15.*(t3.*2.0+t8).*(-1.0./4.0),t8.*t15.*(-1.0./4.0),0.0,0.0,t11+t13,t13+t17,t12,0.0,t17,t16,-t17,0.0,t12,0.0,t17,t12,0.0,t17,t16,-t17,0.0,t5.*(-1.0./2.0)-t14.*(1.0./4.0),-t17,0.0,t16,-t17,0.0,t16,-t17,0.0],[3, 3, 6]);
