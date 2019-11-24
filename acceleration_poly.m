function acc_poly = acceleration_poly(polynomial_degree, time_span)

t0 = time_span.t0;
tf = time_span.tf;

acc_poly= [0 0;0 0];
term_no = polynomial_degree+1;

for i = 3:term_no
acc_poly(1,i) = power(t0, polynomial_degree-term_no +i-2);
acc_poly(2,i) = power(tf, polynomial_degree-term_no +i-2);
end
acc_poly(:,3) = acc_poly(:,3)*2; 
acc_poly(:,4) = acc_poly(:,4)*5; 

end