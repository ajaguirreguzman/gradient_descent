
% Compute analytical solution to linear
% regression using the normal equations.

function [theta] = normalEqn(X, y)

% initialize theta
theta = zeros(size(X, 2), 1);

% calc theta
theta=inv(X'*X)*X'*y;

end
