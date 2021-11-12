# ➗ numerical-methods
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
