clc;
clear all; 
close all;

Img1 = imread('meanfilt.jpg');
Img1 = Img1(:,:,1);
Img1 = imnoise(Img1,'salt & pepper',0.01);
Img2 = meanfilt2(Img1);
% imtool(Img2);
Img3 = conv2(Img1, ones(3)/9,'same');
figure;
imshowpair(Img3,Img2,'montage');
figure;
imshowpair(Img1,Img2,'montage');

