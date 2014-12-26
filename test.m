clear
close all

testImg = ones([512,512,3]);
mask = zeros(size(testImg));
resultImg = completion(testImg,mask);

disp('done');
