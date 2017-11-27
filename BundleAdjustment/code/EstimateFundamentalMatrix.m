function F = EstimateFundamentalMatrix(x1, x2)
%% EstimateFundamentalMatrix
% Estimate the fundamental matrix from two image point correspondences 
% Inputs:
%     x1 - size (N x 2) matrix of points in image 1
%     x2 - size (N x 2) matrix of points in image 2, each row corresponding
%       to x1
% Output:
%    F - size (3 x 3) fundamental matrix with rank 2


if size(x1,2) == 2 || size(x2,2)==2
    x1 = [x1, ones(size(x1,1),1)];
    x2 = [x2, ones(size(x2,1),1)];
end

M = kron(x2, [1,1,1]).*[x1, x1, x1];
[~,~,V] = svd(M);
    
F = reshape(V(:,9), 3, 3)';
[FU, FD, FV] = svd(F);
FD(3,3) = 0;
F = FU*FD*FV';

end
