
% Returns a normalized version of X where the mean value of each
% feature is 0 and the standard deviation is 1. This is often a
% good preprocessing step to do when working with learning algorithms.

% For each feature, the mean is calculated and subtracted from the dataset,
% then the standard deviation is computed and used to divide X-mean(X)

function [X_norm, mu, sigma] = featureNormalize(X)

X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

mu=mean(X);           % column-wise mean, 1x2 matrix
sigma=std(X);         % column-wise std, 1x2 matrix
X_norm=(X-mu)./sigma; % mx2

end
