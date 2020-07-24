function [tabellaIter,x,stimaerrore,Niter,ier] = metodoJacobi(A,b,x0,toll,Nmax)
n=length(b);
Niter = 0;
ier = 0;
stimaerrore = 1;
tabellaIter = [x0'];
x = zeros(n,1);
while (Niter < Nmax) && (stimaerrore > toll)
    for i=1:n
        x(i)= ( b(i) - A(i,1:i-1)*x0(1:i-1) - A(i,i+1:n)*x0(i+1:n) )/A(i,i);
    end
    stimaerrore = norm(x - x0, inf) / norm(x, inf);
    tabellaIter = [tabellaIter; x'];
    Niter = Niter + 1;
    x0 = x;
end
if Niter==Nmax
    disp('Jacobi non raggiunge l''accuratezza desiderata nel numero di iterazioni fissato')
    ier = 1;
else
    disp('Accuratezza ottenuta con Jacobi')
end

end

