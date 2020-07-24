function [A,b,Ap]=pageRank(G,p)
% Risoluzione del Page Rank di Google come problema agli autovalori
% Restituisce la matrice A il cui autovettore relativo all'autovalore di
% massimo modulo (lambda=1) è la soluzione al problema del Page Rank.

n=size(G,1);

G=G-diag(diag(G)); % Eliminazione -eventuali- link autoreferenziali

delta=(1-p)/n;
I=eye(n);
c=sum(G);

index=find(c==0); % Problema delle pagine senza link
ni=length(index); % _numero di colonne da annullare
c(index)=n*ones(1,ni); % _aggiorniamo c
G(:,index)=ones(n,ni); % _aggiorniamo G

v=1./c;
b=delta*ones(n,1);
D=diag(v);
A=I-p*G*D;

e=ones(n,1);
Ap=p*G*D + delta*e*e';