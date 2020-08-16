
% Compute the cost of using a particular choice of theta as the
% parameter for linear regression (with multiple variables) to
% fit the data points in X and y

function J = computeCostMulti(X, y, theta)

% Initialize some useful values
m = length(y); % number of training examples
J = 0;

h=X*theta; % h results in a mx1 matrix
%squaredErrors=(h-y).^2;
%J=(1./(2*m))*sum(squaredErrors);
% Vectorized version is faster:
errors=h-y;
J=(1./(2*m))*errors'*errors;

end
