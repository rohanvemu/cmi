function F = anglefinder(theta, params)

F(1) = 63*cos(theta(1)) + 48*cos(theta(1) + theta(2)) - params(1);
F(2) = 63*sin(theta(1)) + 48*sin(theta(1) + theta(2)) - params(2);
end 