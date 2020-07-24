function [Amod,c,deter] = gaussNaive(A,b)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%   TODO - ELIMINA I COMMENTI IL GIORNO DELL'ESAME

C=norm(A);% massimo degli elementi di A oppure ordine di grandezza degli elementi della matrice
A=[A,b]; %  matrice completa
n=length(b); %  dimensione del sistema
deter=1;
for k=1:n-1 %	per ognuna di queste colonne
    if A(k,k)==0
        %disp('Elemento nullo sulla diagonale: metodo di Gauss Naive non
        %applicabile') - questo lo togliamo e controlliamo fuori, vedi
        %"chiamanteGauss.m"
        disp('Metodo non applicabile!!')
        Amod=A(:,1:n); c=A(:,n+1); deter=[];
        return
    elseif abs(A(k,k))<C*eps %  moltiplicato per eps (scelto come valore soglia). se si  mette c*eps la matrice potrebbe essere singolare. si può usare un valore più grande (10^-14) di eps ma si può avere instabilità
        disp('Attenzione il metodo potrebbe risultare instabile: abs(A(k,k))<C*eps')
    end
    deter=deter*A(k,k); % Ccalcolo del determinanate
    for i=k+1:n % Per ognuna di queste righe
        A(i,k)=A(i,k)/A(k,k); % Moltiplicatore
        A(i,k+1:n+1)=A(i,k+1:n+1)-A(i,k)*A(k,k+1:n+1);
    end
end
if A(n,n)==0
    disp('Matrice singolare!')
elseif abs(A(n,n))<C*eps
    disp('Attenzione, A(n,n)<||A||*eps')
end
deter=deter*A(n,n);
Amod=A(:,1:n); c=A(:,n+1);
end

