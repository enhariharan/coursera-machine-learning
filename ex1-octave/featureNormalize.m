function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
features_count = size(X, 2);
mu = zeros(1, features_count);
sigma = zeros(1, features_count);

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

mu = mean(X); % mean for each feature in X returned as a row vector
sigma = std(X); % standard deviation of each feature in X returned as a row vector

for i = 1:features_count
	actual_value = X(:, i);
	mean = mu(i);
	standard_deviation = sigma(i)
	normalized_value = (actual_value - mean) / standard_deviation
	X_norm(:, i) = normalized_value
end








% ============================================================

end
