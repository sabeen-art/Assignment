inputDir= 'sabeenjpg/';
outputDir= 'sabeengray/';

loadJPG= dir([inputDir '*.jpg']);

for i=1:length(loadJPG)
    
    img= imread([inputDir loadJPG(i).name]);
    name= loadJPG(i).name;
    fprintf('%d) loading %s\t', i, name);
    img= rgb2gray(img);
    imwrite(img, [outputDir name '.png']);
    fprintf('%d) writing %s .png \n', i, name);
    
end