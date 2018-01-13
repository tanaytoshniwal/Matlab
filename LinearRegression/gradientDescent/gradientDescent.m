function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
	del = ((X*theta)-y)';
	for i = 1:size(X,2)
		theta(i) = theta(i) - alpha * (1/m) * del * X(:,i);
    J_history(iter) = costFunctionJ(X, y, theta);

end

end
