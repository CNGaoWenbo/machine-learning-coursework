function [J] = costfun(theta)
    data = load('ex1data2.txt');
    X = data(:, 1:2);
    y = data(:, 3);
    m = length(y);
    [X ,~, ~] = featureNormalize(X);
    X = [ones(m, 1),X];

    J = sum((X*theta-y).^2)/(2*m);
    %dJ = X'*(X*theta-y)/m;
end
