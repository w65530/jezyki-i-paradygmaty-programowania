parent( pam, bob).       % Pam is a parent of Bob
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).

female( pam).            % Pam is female
female( liz).
female( ann).
female( pat).

male( jim).
male( tom).              % Tom is male
male( bob).

child(X,Y):-
    parent(Y,X).

mother(X,Y):-
    parent(X,Y),
    female(X).

grandparent(X,Y):-
    parent(X,Y),
    parent(Y,Z).

sister(X,Y):-
    parent(Z,X),
    parent(Z,Y),
    female(X).
