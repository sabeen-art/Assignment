fd= vision.CascadeObjectDetector;
img= imread('sabeen 12.jpg');

BB= step(fd, img);
size(BB)
imshow(img);
hold on;
for i=1:size(BB, 1)
    if BB(i,3)>100
       rectangle('Position', BB(i,:), 'EdgeColor', 'g', 'linewidth', 5);
    end
end