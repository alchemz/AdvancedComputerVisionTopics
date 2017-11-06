## 1) est_homography

Everyone should eventually notice that the x3 in the pdf eq (10) and (11) and (14) does not exist and in fact is "1".

And A is a 8x9 matrix and not 9x8, but if you follow the instructions there's no way to end up with a 8x9 matrix anyway.

Once you do the svd(A), make sure you take the transpose of the result.

It's all there is to est_homography.

There is a lot of talk of normalisation in the threads. Just note that H as you calculated it is normalised, i.e. norm(H)=1, so you don't need to do anything else.


## 2) warp_pts

Don't forget to add and then remove the third column of all ones to the video and logo data. You will be working with n x 3 matrices, not n x 2. That's obvious since H is an 3x3 matrix. From there, make sure H (3x3) x nx3 works out, this means you need to transpose the nx3 matrix and once you have the results don't forget to re-transpose (or de-transpose) and remove the ones as the function returns an n x2 matrix.

Finally, no need to calculate lambda as such, as long as you apply equations (8) and (9), in other words dividing x' and y', in other words warped_pts(:,1:2) by warped_pts(:,3)

That's all there is.
