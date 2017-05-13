function [ net ] = myClipW( net, c)
%MYCLIPW Summary of this function goes here
%   To clip the parameters of WGAN

for i = 1:(numel(net.layers)-1)
    gwc = net.layers{i}.w > c;
    lwc = net.layers{i}.w <= c;
    gwnc = net.layers{i}.w >= -1*c;
    lwnc = net.layers{i}.w < -1*c;
    net.layers{i}.w = net.layers{i}.w.*lwc.*gwnc + gwc*c + lwnc*-1*c;
    
    gbc = net.layers{i}.b > c;
    lbc = net.layers{i}.b <= c;
    gbnc = net.layers{i}.b >= -1*c;
    lbnc = net.layers{i}.b < -1*c;
    net.layers{i}.b = net.layers{i}.b.*lbc.*gbnc + gbc*c + lbnc*-1*c;
end

end

