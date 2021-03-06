function reach_error = reach_error_fun(in1,in2)
%REACH_ERROR_FUN
%    REACH_ERROR = REACH_ERROR_FUN(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 5.11.
%    06-Mar-2015 16:41:23

target1 = in2(1,:);
target2 = in2(2,:);
x1 = in1(1,:);
x2 = in1(2,:);
x3 = in1(3,:);
t3 = x1+x2+x3;
t4 = x1+x2;
t2 = abs(-target1+cos(t3).*(3.0./1.0e1)+cos(t4).*(4.0./5.0)+cos(x1));
t5 = abs(-target2+sin(t3).*(3.0./1.0e1)+sin(t4).*(4.0./5.0)+sin(x1));
reach_error = t2.^2+t5.^2;
