function [Amod,c,deter, pivot] = gaussPivoting(A,b)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%   TODO - ELIMINA I COMMENTI IL GIORNO DELL'ESAME

% massimo degli elementi di A oppure ordine di grandezza degli elementi della matrice
C=norm(A);
A=[A,b]; % matrice completa
n=length(b); % dimensione del sistema
deter=1;
pivot=1:n;

for k=1:n-1 % per ogni colonna a 1 a n-1
    
    % PIVOTING
    % Cerchiamo l'elemento massimo nella colonna k nelle righe da k a n
    [amax,r]=max(abs(A(k:n,k)));
    r=r+k-1;
    
    % Controllo se A è singolare o se il perno è troppo piccolo
    if amax==0
        disp('Matrice singolare!')
        Amod=A(:,1:n); c=A(:,n+1); deter=0; % il sistema o è incompatibile oppure ha infinite soluzioni ma non lo possiamo verificare con questo algoritmo
        return
    elseif amax<C*eps
    	disp('Attenzione, amax<||A||*eps')
    end
    
    % Ricorda che ad ogni scambio di righe il determinante della matrice
    % camabia di segno
    if r>k
        tmp=A(r,:);
        A(r,:)=A(k,:);
        A(k,:)=tmp; %CORREZIONE
        deter=-deter;
        tmp=pivot(k);
        pivot(k)=pivot(r);
        pivot(r)=tmp;
    end
    deter=deter*A(k,k); %   calcolo del determinanate - nota che A(k,k) può essere diverso da amax (per i lfatto del valore assoluto)
    for i=k+1:n %	per ognuna di queste righe
        A(i,k)=A(i,k)/A(k,k); % moltiplicatore
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

