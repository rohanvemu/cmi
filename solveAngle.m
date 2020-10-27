root_store = zeros(2, 35);
for i = 1:length(x_store)
    
a = x_store(i);
b = y_store(i);
params = [a, b];
R = @(theta)anglefinder(theta, params);
theta0 = [1.5,2];
root_store(:, i) = fsolve(R,theta0);

end 
