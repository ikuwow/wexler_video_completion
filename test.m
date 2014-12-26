clear
close all

testImageName = 'lena'

testImagePath = '~/Documents/MATLAB/AutoShared/testimages/512/';
testImageSource = fullfile(testImagePath,testImageName);

testImg = imread(fullfile([testImageSource,'.bmp'])); % uint8

% mask creation
mask = ones([size(testImg,1),size(testImg,2)],'uint8');
mask(240:260,240:260) = 0;

maskedImg = repmat(mask,[1,1,3]).*testImg;
resultImg = completion(testImg,mask);

disp('done');

figure(1),imshow(uint8(testImg)),title('Original Image')
figure(2),imshow(uint8(maskedImg)),title('Masked Image')
figure(3),imshow(uint8(resultImg)),title('Inpainted Image')
