dd= dir('sabeen 12.jpg');
for i=1:length(dd)
    img= imread(dd(i).name);
    r= img;
    g= img;
    b= img;
    y= img;
    p= img;
    s= img;
    a= img;
    r(:,:,[2,3])= 0;
    g(:,:,[1,3])= 0;
    b(:,:,[1,2])= 0;
    y(:,:,[3])= 0;
    p(:,:,[2])= 0;
    s(:,:,[1])= 0;
    a(:,:,:)= 0;
    subplot(3,3,1), imshow(img), title('original');
    subplot(3,3,2), imshow(r), title('red');
    subplot(3,3,3), imshow(g), title('green');
    subplot(3,3,4), imshow(b), title('blue');
    subplot(3,3,5), imshow(y), title('yellow');
    subplot(3,3,6), imshow(p), title('pink');
    subplot(3,3,7), imshow(s), title('sky blue');
    subplot(3,3,8), imshow(a), title('black');
    imwrite(img3, ['sabeen' dd(i).name]);
    pause(1);
end