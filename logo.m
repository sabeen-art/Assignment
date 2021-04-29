dd= dir('sb/*.jpg');
for i=1:length(dd)
    img1= imread(['sb/' dd(i).name]);
    img2= imread('logo.png');
    img2= imresize(img2, [size(img1,1)/8 size(img1,1)/8]);
    [r,c,ch]= size(img2);
    newimg= img1;
    newimg(1:r,end-c+1:end,:)= img2;
    imshow(newimg);
    pause(0.5);
    imwrite(newimg, ['codes/' dd(i).name]);
end