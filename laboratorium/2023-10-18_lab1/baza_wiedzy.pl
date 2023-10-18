/*ala lubi koty*/
lubi(ala,koty).
lubi(marek,psy).
lubi(janina,owoce).
lubi(franek,rower).
lubi(ala,tomek).
lubi(jan,koty).
lubi(alina,koty).

cenne(zloto).

kobieta(ala).
kobieta(ewelina).
kobieta(maria).

mezczyzna(jan).
mezczyzna(tomek).
mezczyzna(zbigniew).

daje(jan,gazeta,maria).

/*Zmienne w prologu duzymi literami*/

/*Enter - przerywa przegladanie bazy wiedzy*/
/*Space - wyswietla kolejne wyniki z bazy wiedzy*/

/*Koniunkcja -> && -> ,*/
/*Alternatywa -> || -> ;*/
/*if -> :-*/

/*ala lubi osoby ktore lubia koty*/
/*ala lubi X jezeli X lubi koty*/
kogoLubi(ala,X):-
    lubi(X,koty).

kogoLubi1(ala, X):-
    lubi(X,psy),
    mezczyzna(X).



