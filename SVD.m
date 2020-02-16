A = imread('C:\Program Files\MATLAB\R2018b\toolbox\images\imdata\hallway.jpg');
B = rgb2gray(A);
M = double(B);
[U, S, V] = svd(M);
diag(S)'
for n = 5:1:rank(S)
    S(n, n) = 0;
end
Mreduced = U*S*V';
imshow(uint8(Mreduced)); 
