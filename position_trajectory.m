function X = position_trajectory(time, A, degree)
position_traj = []
term_no = degree+1;
for j = 1:length(time)
    position_traj(j) = 0;
    for i = 1:term_no
        trajectory(j,i) = A(i) * power(time(j), degree-term_no +i);
        position_traj(j) = position_traj(j)+trajectory(j,i)
        
    end
end

position = position_traj'
time = time'
X = [time position]

end