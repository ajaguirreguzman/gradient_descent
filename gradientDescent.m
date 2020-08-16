
% Gradient descent algorithm: theta is updated by taking
% num_iters gradient steps with learning rate alpha

function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
  h=X*theta;                % = mx1 matrix
  errors=h-y;               % mx1
  delta=(1/m)*(X'*errors);  % X' is 2xm, so that delta is 2x1
  theta=theta-alpha*delta;

  % save the cost J in every iteration    
  J_history(iter) = computeCost(X, y, theta);
end

end
