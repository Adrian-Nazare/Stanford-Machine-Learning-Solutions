function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
J = ((X*theta - y)' * (X*theta - y))/ (2*m);

%Old Implementation:

%for i = 1:m
%Version 1:    J = J + ((theta(1)*X(i,1)+theta(2)*X(i,2)) - y(i,1))^2;
%Verion 2:     J = J + (X(i,:)*theta - y(i))^2;
%end

%J = J / (2*m);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% =========================================================================

end
