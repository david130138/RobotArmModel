%% *Simulation for LQR targrt reaching*
dt = 1e-2; % sample time
N = 1000; % total steps
t = 0:dt:((N-1)*dt);

% simulation parameters
n=2;
nx=4;
nu=4;
u_init = [0;0;0;0];
x_init = [pi/2;0;0;0];
x_target = [pi/20;pi/20;0;0];
qddot = zeros(n,N);

% cost function parameters
Q = zeros(nx, nx, N); % initialize
R = zeros(nu, nu, N);
l = zeros(nu, N);
h = zeros(nx, N);
g = zeros(nx, N);
for k = 1:N % intermidiate cost
     R(:, :, k) = 0.1*eye(nu, nu);
end
Q(:, :, N) = 1e7*eye(nx, nx); % final cost
h(:, N) = - Q(:, :, N)*x_target;

% Linearized model around the initial condition
A = zeros(nx, nx, N);
B = zeros(nx, nu, N);
% modified cost function parameters for linearized model
l_m = zeros(nu, N);
h_m = zeros(nx, N);
% trajectory in each iteration
u_dev = zeros(nu, N); % deviation
x_dev = zeros(nx, N); % deviation

% load a initial trajectory generated by inverse kinematics
x = load('x_tra.mat');
x = x.x;
u = load('u_tra.mat');
u = u.u;

IR = 6; % number of iterations
cost_def=zeros(IR,1);%for storing the result of the cost for every iteration
for ii = 1:IR
    for k = 1:N
        % linearized system model around the previous trajectory
        [ A(:,:,k), B(:,:,k) ] = linearized_model_real_arm(x(:,k),u(:,k));
        A(:, :, k) = A(:, :, k)*dt + eye(nx);
        B(:, :, k) = B(:, :, k)*dt;
        % modified cost function parameters
        l_m(:, k) = l(:, k) + R(:, :, k)*u(:, k);
        h_m(:, k) = h(:, k) + Q(:, :, k)*x(:, k);
    end
        
    % design lQR controller
    [K, s, P, p, c] = LQR_design( A, B, Q, R, l_m, h_m, g);

    % run simulation
    for k = 1:(N-1)
        % calculate the input deviation by the control law
        u_dev(:, k) = K(:, :, k)*x_dev(:, k) + s(:, k);
        u(:, k) = u(:, k) + u_dev(:, k); % modified input
                
        % drive the arm with input
        % angular acceleration
        qddot = qddot_fun_real_arm(x(:,k), u(:,k));

        % calculate the state deviation of the next step
        x_dev(:,k+1) = x(:,k) - x(:,k+1) + ...
                       dt*[ [zeros(n,n),eye(n,n)]*x(:,k); qddot ];
        
        % calculate the state of the next step
        x(:, k+1) = x(:, k+1) + x_dev(:, k+1);
    end
    
    %compute the cost for every iteration
    for k = 1:(N-1)
          cost_def(ii)= cost_def(ii)+ transpose(x(:,k))*Q(:,:,k)*x(:,k) +...
          transpose(u(:,k))*R(:,:,k)*u(:,k);                    
        end
        cost_def(ii)=cost_def(ii)+transpose(x(:,N))*Q(:,:,N)*x(:,N)+...
            2*transpose(h(:, N))*x(:,N)+transpose(x_target)*Q(:,:,N)*x_target;
   
    %play the movie
    close all;
    real_arm_movie_2_link(length,x,x_target,50,r_rest,d,ss);
end