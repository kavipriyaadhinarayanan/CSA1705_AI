
% Facts: Fruits and their colours
fruit(apple).
fruit(banana).
fruit(orange).
fruit(grapes).
fruit(mango).

% Facts: Colours of fruits
colour(apple, red).
colour(banana, yellow).
colour(orange, orange).
colour(grapes, green).
colour(mango, yellow).

% Rule to find fruit colour
fruit_colour(Fruit, Colour) :-
    fruit(Fruit),
    colour(Fruit, Colour).
