abc= imread('sabeen 2.jpg');
 channel_red= abc(:,:,1);
channel_green= abc(:,:,2);
channel_blue= abc(:,:,3);
subplot(2,2,1), imshow(abc), title('Original');
subplot(2,2,2), imshow(channel_red), title('Red');
subplot(2,2,3), imshow(channel_green), title('Green');
subplot(2,2,4),imshow(channel_blue), title('Blue');