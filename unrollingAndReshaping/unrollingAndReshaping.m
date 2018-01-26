function [theta1, theta2, theta3] = unrollingAndReshaping()

% test case uses theta1 - 10x11 matrix, theta2 - 10x11 matrix and theta3 - 1x11 matrix

% initializing matrices
theta1 = ones(10, 11);
theta2 = 2 * ones(10, 11);
theta3 = 3 * ones(1, 11);

% single unrolled vector of our parameter matrices
DVec = [theta1(:); theta2(:); theta3(:)]

% rolling the parameter matrices back to original dimensions
theta1 = reshape(DVec(1:110), 10, 11);
theta2 = reshape(DVec(111:220), 10, 11);
theta3 = reshape(DVec(221:231), 1, 11);

end