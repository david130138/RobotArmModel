function M_jac = M_jac_fun(in1)
%M_JAC_FUN
%    M_JAC = M_JAC_FUN(IN1)

%    This function was generated by the Symbolic Math Toolbox version 5.10.
%    07-Jan-2016 20:48:55

x2 = in1(2,:);
x3 = in1(3,:);
t2 = x2+x3;
t3 = sin(t2);
t4 = sin(x2);
t5 = sin(x3);
t7 = t3.*(1.0./2.0);
t6 = -t4-t7;
M_jac = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t3-t4.*2.0,t6,-t7,t6,0.0,0.0,t3.*(-1.0./2.0),0.0,0.0,-t3-t5.*(1.0./2.0),t5.*(-1.0./2.0)-t7,t5.*(-1.0./4.0)-t7,t3.*(-1.0./2.0)-t5.*(1.0./2.0),t5.*(-1.0./2.0),t5.*(-1.0./4.0),t3.*(-1.0./2.0)-t5.*(1.0./4.0),t5.*(-1.0./4.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[3, 3, 6]);
