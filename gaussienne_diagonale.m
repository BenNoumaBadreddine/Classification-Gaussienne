function [mu, sigma_sq] = gaussienne_diagonale(train_data)

mu=mean(train_data);

dmu = bsxfun(@minus,train_data,mu);

sigma_sq=sum(dmu.^2)./(size(train_data,1));
%verifier le résultat de std avec sigma_data doit etre egaux pour valider
%l'implementation

end