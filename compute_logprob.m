function [log_prob] = compute_logprob(mu,sigma_sq,test_data,nature)


%compute probabilité

if (strmatch(nature,'isotropique'))
            log_prob = iso_log_probabilite(mu,sigma_sq, test_data)
            
elseif (strmatch(nature,'diagonale'))
            log_prob = diag_log_probabilite(mu,sigma_sq, test_data)
            
elseif (strmatch(nature ,'complete'))
log_prob = comp_log_probabilite(mu,sigma_sq, test_data)

else 
   display('Vérifier la nature de la matice de covariance')
end

end