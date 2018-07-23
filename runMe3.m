close all
clear
img = rgb2gray(imread('uvbase.png'));

%img = img((2350-2049):(2350+2048),(2500-2049):(2500+2048));

FTI = fft2(img);

imagesc(log(abs(fftshift(FTI(:,:)))))
