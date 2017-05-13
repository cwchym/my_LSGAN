function [ output ] = mySigmoidFun( A , forward_or_backward,Loss)
%MYSIGMOIDFUN Summary of this function goes here
%   sigmoid function for 3D models

    %for forward sigmoid
    if strcmp(forward_or_backward,'forward')
        output=sigmoid(A);
    elseif strcmp(forward_or_backward,'backward')
        tmp=sigmoid(A);
        output=(tmp.*(1-tmp)).*Loss;
    end

    function out=sigmoid(X)
        out=1./(1+exp(-1.*X));
    end

end

