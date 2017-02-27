function [log_prob]=diag_log_probabilite(mu, sigma_sq, test_data)

   % calcule le log du dénominateur
   denominateur=-size(test_data,2)*log(2*pi)./2.0-log(prod(sqrt(sigma_sq)))./2.0;

    % calcule la log probabilité totale
    dmu = bsxfun(@minus,test_data,mu);
    dsig = bsxfun(@rdivide,dmu.^2,(2.0*sigma_sq));
 
    log_prob = denominateur - sum(dsig,2);

end