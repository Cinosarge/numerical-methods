% ESEMPIO SU UN CASO REALE - USIAMO pageRank2 e surfer
[U,G] = surfer('https://www.harvard.edu',50)
p=0.85;

[A,b,Ap]=pageRank3(G,p);

xMatlab=A\b

[AmodN,cN,deterN]=gaussNaive(A,b);
if deterN~=0 && ~isempty(deterN)
    UN=triu(AmodN);
    [xN]=backsubst(UN,cN);
end

[AmodP,cP,deterP, pivot]=gaussPivoting(A,b);
if deterP ~=0
    UP=triu(AmodP);
    [xP]=backsubst(UP,cP);
end

n=length(b); x0=zeros(n,1); toll=1e-2; Nmax=100;
[tabellaIter,xJ,stimaerrore,NiterJ,ier] = metodoJacobi(A,b,x0,toll,Nmax);
NiterJ
xJ

[tabellaIter,xGS,stimaerrore,NiterGS,ier] = metodoGaussSeidel(A,b,x0,toll,Nmax);
NiterGS
xGS



toll=1e-2;
mmax=100;
[lambda,m,stimaerr,y] = potenze(Ap,toll,mmax);
y