function [mu, sigma_sq] = gaussienne_isotropique(train_data)

% m=size(train_data,1);
% n=size(train_data,2);
% somme=0;
mu=mean(train_data);
%mu=sum(train_data,1)/m;


% for i=1:size(train_data)
%     somme=somme+(train_data(i,:)-mu);
% end
% somme=sum((somme));
xc = bsxfun(@minus,train_data,mu);  % Remove mean    
% sigma_sq=somme./(m*n);
sigma_sq=sum(sum(xc.^2))./prod(size(train_data));%(size(train_data,1)*size(train_data,2));

end