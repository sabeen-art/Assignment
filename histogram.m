img1= imread('sabeen 12.jpg');
img2= histeq(img1);
subplot(2,2,1), imshow(img1), title('sabeen1');
subplot(2,2,2), imshow(histeq(img1)), title('sabeen2');
subplot(2,2,3), imhist(img1), title('histogram equalisation of sabeen1');
subplot(2,2,4), imhist(histeq(img1)), title('histogram equalisation of sabeen2');