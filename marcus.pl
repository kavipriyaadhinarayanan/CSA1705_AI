
% Facts
man(marcus).
pompeian(marcus).
roman(X) :- pompeian(X).
ruler(caesar).

% All Romans are either loyal to Caesar or hate Caesar
loyal(X, caesar) :- roman(X), not(hates(X, caesar)).
hates(X, caesar) :- roman(X), not(loyal(X, caesar)).

% Everyone is loyal to someone
loyal(X, someone) :- person(X).

% People try to assassinate only rulers
% they are not loyal to
tries_to_assassinate(X, Y) :-
    person(X),
    ruler(Y),
    not(loyal(X, Y)).

% Marcus tried to assassinate Caesar
person(marcus).
person(caesar).
tries_to_assassinate(marcus, caesar).

% All men are people
person(X) :- man(X).

% Queries
