function [mu, sigma_sq] = gaussienne_complete(train_data)

m=size(train_data,1);
%n=size(train_data,2);
mu=mean(train_data);

xc = bsxfun(@minus,train_data,mu); % Remove mean  

sigma_sq = (xc' * xc) / (m);
%sigma_sq=cov(train_data);
end