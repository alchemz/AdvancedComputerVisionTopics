function result= scale(img, value)
result= value. *img;
endfunction

dolphin =imread("xx,png");
imshow(scale(dolphin, 1.5));
