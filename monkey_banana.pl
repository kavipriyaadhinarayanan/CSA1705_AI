
% Initial State
monkey_at(door).
box_at(window).
banana_at(middle).

% Monkey can move from one place to another
move(door, window).
move(window, middle).
move(middle, door).

% Monkey moves to the box
walk(X, Y) :-
    move(X, Y).

% Monkey pushes the box
push_box :-
    monkey_at(window),
    box_at(window),
    banana_at(middle),
    write('Monkey pushes the box to middle.'), nl.

% Monkey climbs the box
climb_box :-
    write('Monkey climbs the box.'), nl.

% Monkey gets the banana
get_banana :-
    write('Monkey gets the banana!'), nl.

% Main Goal
solve :-
    write('Monkey moves from door to window.'), nl,
    push_box,
    climb_box,
    get_banana,
    write('Goal Achieved!'), nl.
