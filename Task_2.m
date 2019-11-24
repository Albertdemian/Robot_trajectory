%Task 1 
clear all
clc
close all
%%
%defining constrains
constrains.q = [1 2];
constrains.v = [0 0];
constrains.a = [0 0];
constrains.j = ["ns" "ns"]; 
%definign time span 

time_span.t0 = 0;
time_span.tf = 2;

%claculating required degree polynomial 
degree = polynomial_degree(constrains); 

%calculating polynomial parameters 
A = polynomial_params(time_span, constrains, degree);

% position trajectory
t = time_span.t0 :0.1: time_span.tf;

position_traj_1 =  position_trajectory(t, A, degree)

%%
%defining constrains
constrains.q = [2 0];
constrains.v = [0 0];
constrains.a = [0 0];
constrains.j = ["ns" "ns"]; 
time_span.t0 = 2;
time_span.tf = 4;

%claculating required degree polynomial 
degree = polynomial_degree(constrains); 

%calculating polynomial parameters 
A = polynomial_params(time_span, constrains, degree);

% position trajectory
t = time_span.t0 :0.1: time_span.tf;

position_traj_2 =  position_trajectory(t, A, degree)

position_traj = [position_traj_1;position_traj_2];
figure('name', 'position trajector')
plot(position_traj(:,1), position_traj(:,2))
xlabel('time')
ylabel('angel')
grid on