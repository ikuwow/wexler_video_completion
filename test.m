clear
close all

testImageName = 'lena'

testImagePath = '~/Documents/MATLAB/AutoShared/testimages/512/';
testImageSource = fullfile(testImagePath,testImageName);

testImg = imread(fullfile([testImageSource,'.bmp'])); % uint8

% mask creation
%{
mask = ones([size(testImg,1),size(testImg,2)],'uint8');
mask(240:260,240:260) = 0;
%}

% mask import
masks = load('~/Documents/MATLAB/AutoShared/testimages/mask512.mat');
mask = logical(masks.text);
% mask = masks.line;
%}

maskedImg = repmat(uint8(mask),[1,1,3]).*testImg;

%% Main 
disp('Completion Start.');
resultImg = completion(testImg,mask);
disp('Completion Done!');

figure(1),imshow(uint8(testImg)),title('Original Image')
figure(2),imshow(uint8(maskedImg)),title('Masked Image')
figure(3),imshow(uint8(resultImg)),title('Inpainted Image')
