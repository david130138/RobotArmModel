function C = C_fun(in1)
%C_FUN
%    C = C_FUN(IN1)

%    This function was generated by the Symbolic Math Toolbox version 5.10.
%    07-Jan-2016 20:48:54

x2 = in1(2,:);
x3 = in1(3,:);
x4 = in1(4,:);
x5 = in1(5,:);
x6 = in1(6,:);
t2 = x2+x3;
t3 = sin(t2);
t4 = t3.*(1.0./2.0);
t5 = sin(x2);
t6 = t4+t5;
t7 = sin(x3);
t8 = t7.*(1.0./4.0);
t9 = t4+t8;
t10 = x4+x5+x6;
C = reshape([-t6.*x5-t9.*x6,t6.*x4-t7.*x6.*(1.0./4.0),t7.*x5.*(1.0./4.0)+t9.*x4,-t6.*x4-t6.*x5-t9.*x6,t7.*x6.*(-1.0./4.0),t7.*(x4+x5).*(1.0./4.0),t10.*(t3.*2.0+t7).*(-1.0./4.0),t7.*t10.*(-1.0./4.0),0.0],[3, 3]);
