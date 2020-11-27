%Author : Sercan SATICI

%% Gürültülü Ýmge Oluþturma

clear all;close all;clc;
myFolder = 'C:\Dosyalarým\Master\ÝTÜ\Bitirme Tezi\Deep Learning\Tez\21112020\Dataset\SercanSatici\originalcoloured';
filePattern = fullfile(myFolder, '*.JPG');
theFiles = dir(filePattern);

noisyType = 0;
type = 'gaussian';
mean = 0;
variance = 0.5;%sqrt(15);
w=180; h=180;%re-size
saveFolder = 'C:\Dosyalarým\Master\ÝTÜ\Bitirme Tezi\Deep Learning\Tez\21112020\Dataset\SercanSatici\originalgray\';

switch noisyType
    case 0
        type = 'gaussian';%Gaussian white noise with constant mean and variance
    case 1
        type = 'localvar';%Zero-mean Gaussian white noise with an intensity-dependent variance
    case 2
        type = 'poisson';%Poisson noise
    case 3
        type = 'salt & pepper';%On and off pixels
    case 4
        type = 'speckle';%Multiplicative noise
end

for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    saveFolderName = [saveFolder, 'test', num2str(k), '.jpg'];
    img = imread(baseFileName);
%     imshow(img);%orijinal RGB-imge
    gray_img = rgb2gray(img);
%     imshow(gray_img);%orijinal Gray-imge
%     resize_gray_img = imresize(gray_img,[w h]);   
%     noisy_img = imnoise(img,type,mean,variance);
    imwrite(gray_img,saveFolderName,'JPG');
end
