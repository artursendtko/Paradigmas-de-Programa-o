1-
zeroInit(L):-
    L = [0|_].

2-
has5(L):-
    L = [_,_,_,_,_].

3-
hasN(L,N):-
    length(L,N).

4-
potN0(N,L):-
    H is 2^N,
    L =	[H|T],
    N1 is N - 1,
	N1 >= -1,
	potN0(N1,T).
potN0(_,[]).

5-
zipmult([],[],[]).
zipmult(L1,L2,L3):-
    L1 = [H1|T1],
    L2 = [H2|T2],
    L3 = [H3|T3],
    H3 is H1*H2,
    zipmult(T1,T2,T3).

6-
potencias(0,[]) :- !.
potencias(N,L) :-
    N > 0,
    potAux(N,L,0).

potAux(N,[],N).
potAux(N,L,Ind) :-
    L = [H|T],
    H is 2**Ind,
    N1 is Ind + 1,
potAux(N,T,N1).

7-
positivos([],[]) :- !.
positivos(L1, L2) :-
    L1 = [H1|T1],
    (H1 > 0 -> L2 = [H1|T2] ; true),
    (H1 > 0 -> T = T2 ; T = L2),
positivos(T1,T).

8-
mesmaPosicao(A,[A|_],[A|_]) :- !.
mesmaPosicao(A,L1,L2) :-
    L1 = [_|T1],
    L2 = [_|T2],
mesmaPosicao(A,T1,T2).

10-
azulejos(0,0) :- !.
azulejos(NA,NQ) :-
    NA >= 0,
    D is sqrt(NA),
    D1 is floor(D),
    NA1 is NA - (D1*D1),
    azulejos(NA1,NQ1),
NQ is NQ1 + 1.

