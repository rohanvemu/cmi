figure()
h = animatedline('Color', '[0.4940 0.1840 0.5560]', 'Linestyle', '-');
axis([15,60,40,70])
title("Tracing BE")
x = x_store;
y = y_store;
for k = 1:length(x)  
    addpoints(h,x(k),y(k));
    drawnow
    pause(0.1)
end

options = optimset('Display','off');

root_store = zeros(2, 35);
for i = 1:length(x_store)
    
a = x_store(i);
b = y_store(i);
params = [a, b];
R = @(theta)anglefinder(theta, params);
theta0 = [1.5,2];
root_store(:, i) = fsolve(R,theta0, options);

end 

disp(root_store)



%% scsht.m
% <include>scsht.m</include>
%% savepix.m
% <include>savepix.m</include>
%% convertpixtoin.m
% <include>convertpixtoin.m</include>
%% writeBE.m
% <include>writeBE.m</include>
%% anglefinder.m
% <include>anglefinder.m</include>
%% vid_angle_distance.m
% <include>vid_angle_distance.m</include>