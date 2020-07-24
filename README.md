# numerical-methods (IT)
Questa è una collezione di metodi numerici sviluppati durante il corso di Calcolo Scientifico alla facoltà di Informatica dell'Università degli Studi di Salerno. Questi metodi includono la risoluzione di sistemi lineari, il calcolo del raggio spettrale di una matrice e la loro applicazione al calcolo del Page Rank di Google.

# Description
Segue una descrizione dei metodi numerici. Puoi scaricarli e aggiungerli a Matlab. Nota che il file "pageRankExample.m" ha delle dipendenze rispetto ad altri file contenuti nella cartella.

## backsubst.m
L'algoritmo di sostituzione all'in dietro per la risoluzione di sistemi lineari triangolari superiori.
## gaussNaive.m
L'algoritmo di eliminazione di Gauss per la riduzione di un sistema lineare a un equivalente sistema lineare triangolare superiore. Questa versione non usa strategie di pivoting.
## gaussPivoting.m
L'algoritmo di eliminazione di Gauss per la riduzione di un sistema lineare a un equivalente sistema lineare triangolare superiore. Questa versione usa una strategia di pivoting parziale.
## metodoGaussSeidel.m
L'algoritmo iterativo di Gauss-Seidel per la risoluzione approssimata di sistemi lineari.
## metodoJacobi.m
L'algoritmo iterativo di Jacobi per la risoluzione approssimata di sistemi lineari.
## nodiCheby.m
Calcola un insieme di nodi di Chebyshev.
## pageRank.m
Calcola il Page Rank di Google.
## pageRankExample.m
Un esempio di calcolo del Page Rank di Google.
## potenze.m
Il metodo delle potenze è un metodo iterativo per il calcolo del raggio spettrale di una matrice.
## surfer.m
Una funzione di terze parti ausiliaria per il download di una collezione di pagine web per le quali calcolare il punteggio di ranking.

# numerical-methods (EN)
This is a collection of Matlab numerical methods developed during the Numerical Anaysis course at Computer Science Faculty, University of Salerno. These methods cover linear systems resolution, matrix spectral radius calculation and application of the methods to the Google Page Rank algorithm.

# Description
Here goes a description of each numerical method. You can download and add them to you Matlab environment. Notice that if you want to run a working Google Page Rank example there are dependencies among the script "pageRankExample.m" and some other functions in the folder.

## backsubst.m
The Back Substitution Algorithm for upper triangular linear systems resolution.
## gaussNaive.m
The Gauss Elimination Algorithm for reduction of a linear system to an equivalent upper triangular system. This version doesn't make use of any pivoting strategies.
## gaussPivoting.m
The Gauss Elimination Algorithm for reduction of a linear system to an equivalent upper triangular system. This version uses partial pivoting.
## metodoGaussSeidel.m
The Gauss-Seidel iterative algorithm for linear systems approximate resolution.
## metodoJacobi.m
The Jacobi iterative algorithm for linear systems approximate resolution.
## nodiCheby.m
Calculates a set of Chebyshev nodes.
## pageRank.m
Calculates the Google Page Rank.
## pageRankExample.m
An Example calculation of Google Page Rank.
## potenze.m
An iterative method for matrix spectral radius calculation.
## surfer.m
A third party function used to download a collection of web pages for the Page Ranking Algorithm to work upon.
