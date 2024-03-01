/* Parent relationships */
parent(john, mary).
parent(john, steve).
parent(lisa, mary).
parent(lisa, steve).
parent(mary, jacob).
parent(steve, emily).

/* Rule to define who is a mother */
mother(Mother, Child) :-
    parent(Mother, Child),
    female(Mother).

/* Rule to define who is a father */
father(Father, Child) :-
    parent(Father, Child),
    male(Father).

/* Rule to define who is a sibling */
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

/* Rule to define who is a sister */
sister(Sister, Person) :-
    sibling(Sister, Person),
    female(Sister).

/* Rule to define who is a brother */
brother(Brother, Person) :-
    sibling(Brother, Person),
    male(Brother).

/* Facts about genders */
male(john).
male(steve).
male(jacob).
female(lisa).
female(mary).
female(emily).
