zeroInit(L):-
    L = [0|_].

has5(L):-
    L = [_,_,_,_,_].

hasN(L,N):-
    length(L,N).

potN0(N,L):-
    H is 2^N,
    L =	[H|T],
    N1 is N - 1,
	N1 >= -1,
	potN0(N1,T).
potN0(_,[]).
