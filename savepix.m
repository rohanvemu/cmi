start_x = zeros(1, 14);
start_y = zeros(1, 14);

end_x = zeros(1, 14);
end_y = zeros(1, 14);

X = [1111, 1696, 2502, 2624, 2743, 2834, 3361, 3812, 4070, 4397, 4591, 4622, 4658, 6638];
i = 0;
for rohan = X
i = i +1;
startname = ['Start_' num2str(rohan) '.png'];
start = imread(startname);
figure()
imshow(start)
[x, y] = ginput(1);

start_x(i) = x;
start_y(i) = y;


endname = ['End_' num2str(rohan) '.png'];
endd = imread(endname);
figure()
imshow(endd)
[x1, y1] = ginput(3);

end_x(i) = x1;
end_y(i) = y1;

end 



