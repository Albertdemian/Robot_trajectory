function poly_vel = velocity_poly(polynomial_degree, time_span)

t0 = time_span.t0;
tf = time_span.tf;

poly_vel= [0;0];
term_no = polynomial_degree;

for i = 1:term_no
poly_vel(1,i+1) = i * power(t0, i-1);
poly_vel(2,i+1) = i * power(tf, i-1);

end
end