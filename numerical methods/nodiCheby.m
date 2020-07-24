function x=nodiCheby(a,b,n)
n=n-1;
for i=0:n
    x(i+1)=(a+b)/2-((b-a)/2)*cos(((2*i+1)*pi)/(2*(n+1)));
end

