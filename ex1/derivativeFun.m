function D = derivativeFun(theta, X, y, product)

D = (((X * theta)- y)' * product) / length(y);

%Old Implementation:

%D = 0;
%m = length(y);
%    for i = 1:m
%        D = D + (X(i,:)*theta - y(i))*product(i);
%    end
%D = D / m;
end