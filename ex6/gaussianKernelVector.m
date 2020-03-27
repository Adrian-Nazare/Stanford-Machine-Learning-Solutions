function simVector = gaussianKernelVector(l, x, y, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x is a row vector

x = reshape(x, 1, []);
y = y(:);
m = size(l, 1);
n = size(l, 2);

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%
diff = l - x;
diffsq = zeros(m,1);
for i= 1:m;
    diffsq(i)= diff(i,:) * diff(i,:)';
end
diffexp = - diffsq / (2*(sigma^2));
powervector = exp(diffexp);
sign = 2*y - 1;
signedPowerVector = sign .* powervector;
simVector = powervector' * signedPowerVector;


% =============================================================
    
end
