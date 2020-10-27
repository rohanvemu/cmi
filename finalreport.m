tibia_x = zeros(1, 14);
tibia_y = zeros(1, 14);
end_tibia_x = zeros(1, 14);
end_tibia_y = zeros(1, 14);

ankle_x = zeros(1, 14);
ankle_y = zeros(1, 14);
end_ankle_x = zeros(1, 14);
end_ankle_y = zeros(1, 14);

femur_x = zeros(1, 14);
femur_y = zeros(1, 14);
end_femur_x = zeros(1, 14);
end_femur_y = zeros(1, 14);

X = [4591, 7998, 9084, 1111, 2032, 2946, 2743, 3209, 5652, 3361, 7700, 8554, 4070, 8552, 9842, 2624, 5952, 7106, 1696, 3578, 9105, 4622, 5684, 9149, 4658, 9207, 9566, 4397, 6425, 9397, 2834, 4001, 7233, 2502, 4984, 6696, 6638, 7127, 9308, 3812, 7245, 9016];

i = 0;
for rohan = X
i = i +1;

endname = ['End_' num2str(rohan) '.png'];
endd = imread(endname);
figure()
imshow(endd)
[x1, y1] = ginput(3);

end_ankle_x(i) = x1(1);
end_tibia_x(i) = x1(2);
end_femur_x(i) = x1(3);

end_ankle_y(i) = y1(1);
end_tibia_y(i) = y1(2);
end_femur_y(i) = y1(3);

end 

