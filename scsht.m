X = [4591, 7998, 9084, 1111, 2032, 2946, 2743, 3209, 5652, 3361, 7700, 8554, 4070, 8552, 9842, 2624, 5952, 7106, 1696, 3578, 9105, 4622, 5684, 9149, 4658, 9207, 9566, 4397, 6425, 9397, 2834, 4001, 7233, 2502, 4984, 6696, 6638, 7127, 9308, 3812, 7245, 9016];
i = 0;
for x = X
i = i+1;    
name = ['Roach_' num2str(x) '.mp4'];
v = VideoReader(name);

out = read(v, 60);
figure('visible','off')
imagesc(out);
ename = ['Start_' num2str(x) '.png'];
saveas(gcf,ename);

out2 = read(v, 150);
figure('visible','off')
imagesc(out2);
ename2 = ['End_' num2str(x) '.png'];
saveas(gcf,ename2);

end

disp(['You generated ' num2str(2*i), ' images.'])
