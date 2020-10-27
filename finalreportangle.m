angle1 = zeros(1, length(end_ankle_x));

for i = 1:length(end_ankle_x)
    v1 = [end_femur_x(i) - end_tibia_x(i), end_femur_y(i) - end_tibia_y(i)];
    v2 = [end_ankle_x(i) - end_tibia_x(i), end_ankle_y(i) - end_tibia_y(i)];
    
    u1 = v1/norm(v1);
    u2 = v2/norm(v2);
    
    dot_product = dot(u1, u2);
    
    out = acos(dot_product) * 180 * 1/pi;
    
    angle1(i) = out;
    
end


max_ang = max(angle1)/180;
min_ang = min(angle1)/180;

val = linspace(min_ang, max_ang, 100);

tibia_length = mean(sqrt((end_ankle_x - end_tibia_x).^2 + (end_ankle_y - end_tibia_y).^2));

x = tibia_length * cos(val)*conversion;
y = tibia_length * sin(val)*conversion;

y_u = y + 0.05*rand(1, 100);
y_b = y - 0.05*rand(1, 100);

figure()
plot(x, y) 

title("Range of Motion for Leg 1")
xlabel("X Coordinate (cm)")
ylabel("Y Coordinate (cm)")



