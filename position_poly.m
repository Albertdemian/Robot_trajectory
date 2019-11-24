function poly_pos = position_poly(polynomial_degree, time_span)

t0 = time_span.t0;
tf = time_span.tf;

poly_pos = [];
term_no = polynomial_degree+1;

for i = 1:term_no
poly_pos(1,i) = power(t0, polynomial_degree-term_no +i);
poly_pos(2,i) = power(tf, polynomial_degree-term_no +i);

end
end