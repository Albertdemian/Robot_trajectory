function A = polynomial_params(time_span, constrains, polynomial_degree)

t0 = time_span.t0;
tf = time_span.tf;

c1 = constrains.q;
c2 = constrains.v;
c3 = constrains.a;
c4 = constrains.j;

pos_poly = position_poly(polynomial_degree,time_span);
vel_poly = velocity_poly(polynomial_degree,time_span);
matrix = [pos_poly;vel_poly];
solution_vector = [c1' ; c2']; 
if string(c3(1)) ~= "ns"
    acc_poly = acceleration_poly(polynomial_degree,time_span);
    matrix = [matrix; acc_poly];
    solution_vector = [solution_vector; c3']
end 

A = inv(matrix)*solution_vector;
end