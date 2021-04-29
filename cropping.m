img= imread('sabeen 2.jpg');
subplot(1,2,1); imshow(img);
h= impixelinfo();
axis on;
I2= imcrop(img, [1560, 400, 3000-1560, 2500-400]);

subplot(1,2,2),
imshow(I2);
axis on;