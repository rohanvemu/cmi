info = mmfileinfo('Roach_1111.mp4');
video = info.Video;

startname = ['Start_' num2str(1111) '.png'];
start = imread(startname);
figure()
imshow(start)
[x, y] = ginput(2);

ruler_pixel = x(2) - x(1);
ruler_cm = 21.6 - 16.4;

conversion = ruler_cm / ruler_pixel;


convert_x_start = start_x * conversion;
convert_y_start = start_y * conversion;
convert_x_end = end_x * conversion;
convert_y_end = end_y * conversion;


plot(convert_x_end, convert_y_end)
