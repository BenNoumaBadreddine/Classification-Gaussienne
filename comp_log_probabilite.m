function [log_prob]=comp_log_probabilite(mu, covv, test_data)
dim=size(test_data,2);
c=-dim*log(2.0*pi)./2.0;
dett=det(covv);
c=c+log(dett);

dmu = bsxfun(@minus,test_data,mu);
invv=inv(covv);

display(size(dmu))
display(size(invv))

dxs=(dmu*invv);
dxsx=sum(dxs'*dmu,1);
log_prob=c-0.5*dxsx;

end