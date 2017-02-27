function [mu, sigma_sq ] = gauss_mv(train_data,nature)

%Apprentissage du modele
if (strmatch(nature,'isotropique'))
    [mu, sigma_sq] = gaussienne_isotropique(train_data);
elseif (strmatch(nature,'diagonale'))
[mu, sigma_sq] = gaussienne_diagonale(train_data);
elseif (strmatch(nature ,'complete'))
    [mu, sigma_sq] = gaussienne_complete(train_data);
else 
   display('Vérifier entré de nature de la matice de covariance')
end

%compute probabilité
end