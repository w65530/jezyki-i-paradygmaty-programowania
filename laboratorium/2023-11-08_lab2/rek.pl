silnia(0,1).
silnia(N,Wynik):-
    N > 0,
    NewN is N-1,
    silnia(NewN,NewWynik),
    Wynik is N*NewWynik.

dodaj(A,B,C):-
    C is A+B,
    write('Wynik: '),write(C),nl.

warunek(X):-
    (   X > 0 ->
    write('liczba dodatnia');
    write('liczba ujemna')
    ).

%main:-
%    write('podaj liczbe: '),
%    read(N).

fib(0,0).
fib(1,1).
fib(N,Wynik):-
    N > 1,
    NewA is N-1,
    NewB is N-2,
    fib(NewA,WynikA),
    fib(NewB,WynikB),
    Wynik is WynikA+WynikB.

potega(0,_,1).
potega(N,A,Wynik):-
    N > 0,
    NewN is N-1,
    potega(NewN,A,NewWynik),
    Wynik is NewWynik * A.

potega:-
    write('Podaj liczbe: '),read(A),
    write('Podaj potege: '),read(N),
    (   N >= 0 ->
        potega(N,A,Wynik),
        write('Wynik = '),write(Wynik);
        write('Blad: N musi byc wieksze od 0')
    ).

hanoi(0):-
    write('Blad: Nie mozna utworzyc wiezy z tylu krazków!').

hanoi(N):-
    hanoi(N,1,2,3).

hanoi(0,_,_,_):-!.
hanoi(N,X,Y,Z):-
    N > 0,
    NewN is N-1,
    hanoi(NewN,X,Z,Y),
    write('Przenosze krazek z wiezy '),write(X),write(' na wieze '),write(Y),nl,
    hanoi(NewN,Z,Y,X).

