function signaling_jac = signaling_jac_fun(in1,in2)
%SIGNALING_JAC_FUN
%    SIGNALING_JAC = SIGNALING_JAC_FUN(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 5.11.
%    06-Mar-2015 16:41:24

l1 = in2(1,:);
l2 = in2(2,:);
l3 = in2(3,:);
x1 = in1(1,:);
x2 = in1(2,:);
x3 = in1(3,:);
x7 = in1(7,:);
x8 = in1(8,:);
x9 = in1(9,:);
t2 = l2.^2;
t3 = x1+x2-x7-x8;
t4 = sin(t3);
t5 = t2.*t4.*4.0;
t6 = l3.^2;
t7 = x1+x2+x3-x7-x8-x9;
t8 = sin(t7);
t9 = t6.*t8.*2.0;
t10 = x1+x2+x3-x7-x8;
t11 = sin(t10);
t12 = l2.*l3.*t11.*2.0;
t13 = x1+x2+x3-x7;
t14 = sin(t13);
t15 = l1.*l3.*t14.*2.0;
t16 = x1+x2-x7-x8-x9;
t17 = sin(t16);
t18 = l2.*l3.*t17.*2.0;
t19 = x1+x2-x7;
t20 = sin(t19);
t21 = l1.*l2.*t20.*4.0;
t22 = x2+x3;
t23 = sin(t22);
t24 = l1.^2;
t25 = x1-x7;
t26 = sin(t25);
t27 = t24.*t26.*6.0;
t28 = x1-x7-x8-x9;
t29 = sin(t28);
t30 = l1.*l3.*t29.*2.0;
t31 = x1-x7-x8;
t32 = sin(t31);
t33 = l1.*l2.*t32.*4.0;
t34 = x8+x9;
t35 = sin(t34);
signaling_jac = [t5+t9+t12+t15+t18+t21+t27+t30+t33;t5+t9+t12+t15+t18+t21-l1.*l2.*sin(x2).*4.0-l1.*l3.*t23.*2.0;t9+t12+t15-l2.*l3.*sin(x3).*2.0-l1.*l3.*t23.*2.0;0.0;0.0;0.0;-t5-t9-t12-t15-t18-t21-t27-t30-t33;-t5-t9-t12-t18-t30-t33-l1.*l2.*sin(x8).*4.0-l1.*l3.*t35.*2.0;-t9-t18-t30-l2.*l3.*sin(x9).*2.0-l1.*l3.*t35.*2.0;0.0;0.0;0.0];
