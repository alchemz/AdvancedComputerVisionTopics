%the real phylli
pd(40:60, 30:40);
im1=imread('im1.png');
imshow(im1);
imgreen=im1(:,:,2); % 1-red 2-green 3-blue
plot(imgreen(256,:)); % plot a red line
size(im1);
disp(im1);
disp(class(im1));
%uint8 u-unsigned int-integer 8-8 bits
plot(im1(50,:)); % plot 
%crop image
cropped=im1(110:310,10:160);
%image with same size, essentially, sum two matrices
summed=im1+im2;
average=im1/2+im2/2;
average2=(im1+im2)/2;
%average does not equal to average2, cuz the limit is[0,255]
