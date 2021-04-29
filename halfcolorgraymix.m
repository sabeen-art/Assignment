img1= imread('sabeen 20.png');
imgGray= rgb2gray(img1);
img2= imread('sabeen 20.png');
[r,c,~]= size(img2);
c= round(c/2);
imgsplit= img2;
for i=1:3
imgsplit([1:r],[1:c],i)= imgGray([1:r],[1:c]);
end
imshow(imgsplit);
subplot(1,3,1), imshow(img1), title('colorful image');
subplot(1,3,2), imshow(imgGray), title('gray image');
subplot(1,3,3), imshow(imgsplit), title('half gray half colorful image');