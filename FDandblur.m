imagefiles= dir('*.jpg');
nfiles= length(imagefiles);
for ii=1:nfiles
currentfilename= imagefiles(ii).name;
currentimage= imread(currentfilename);

faceDetector= vision.CascadeObjectDetector;
bbox= step(faceDetector,currentimage);
for j=1:size(bbox)
xbox= bbox(j,:);
subImage= imcrop(currentimage, xbox);
subImage(:,:,1);
subImage(:,:,2);
subImage(:,:,3);
H= fspecial('disk', 40);
blurred= imfilter(subImage,H);
currentimage(xbox(2):xbox(2)+xbox(4),xbox(1):xbox(1)+xbox(3),1:end)= blurred;
newname= strcat('pic', num2str(ii));
imwrite(currentimage, strcat(newname, '.bmp'));
end 
end