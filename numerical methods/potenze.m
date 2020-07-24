function [lambda,m,stimaerr,y] = potenze(A,toll,mmax)
n=size(A,1);
y0=ones(n,1);
m=0;
stimaerr=toll+1;
lambda0=1;
while (stimaerr>toll & m<mmax)
    w=A*y0;
    [wmax,k]=max(abs(w));
    lambda=w(k)/y0(k);
    y=w/norm(w,1);
    stimaerr=abs(lambda-lambda0)/abs(lambda);
    %stimaerr=norm(y-y0,1)/norm(y,1);
    m=m+1;
    lambda0=lambda;
    y0=y;
end
end

