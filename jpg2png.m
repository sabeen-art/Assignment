inputDir= 'sabeenjpg/';
outputDir= 'sabeenpng/';
loadJPG= dir([inputDir '*.jpg']);
for i=1:length(loadJPG)
    img= imread([inputDir loadJPG(i).name]);
    name= loadJPG(i).name;
    imwrite(img, [outputDir name '.png']);
    fprintf('%d) writing %s .png\n', i, name);
end