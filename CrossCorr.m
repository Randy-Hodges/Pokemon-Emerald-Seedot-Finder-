function [outputArg1] = CrossCorr(refimage,vidimage, rate, topbot)
%CROSSCORR Checks if a chosen pokemon is in the video screen
%This function takes in a reference image and compares it to another image.
%If maximum of cross correlation is higher than rate then the function 
%returns true, otherwise false. Rate for seedot is around .65

%prepare images
img1 = rgb2gray(refimage);
img2 = rgb2gray(vidimage);
if topbot == 1
vidimg = img2(1:size(img2, 1)/1.8, size(img2, 2)/2:size(img2, 2)-100) + 30;
% figure;
% imshow(vidimg);
% figure;
% imshow(img1);
else
    vidimg = img2(1:size(img2, 1)/1.8, 1:size(img2, 2)/2) + 30;
end

%Do cross correlation
C2 = normxcorr2(img1, vidimg);
C1 = max(C2(:));
disp(C1);
if (C1 > rate)
outputArg1 = true;
else 
    outputArg1 = false;
end

