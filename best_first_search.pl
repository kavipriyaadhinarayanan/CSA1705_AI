
% Graph Connections
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).
edge(d, h).
edge(e, h).
edge(f, h).
edge(g, h).

% Heuristic Values
heuristic(a, 7).
heuristic(b, 6).
heuristic(c, 4).
heuristic(d, 5).
heuristic(e, 3).
heuristic(f, 2).
heuristic(g, 1).
heuristic(h, 0).

% Best First Search
best_first(Start, Goal, Path) :-
    heuristic(Start, H),
    search([H-[Start]], Goal, [], Result),
    reverse(Result, Path).

search([_-[Goal|Rest]|_], Goal, _, [Goal|Rest]).

search([_-[Current|Path]|Open], Goal, Visited, Result) :-
    \+ member(Current, Visited),
    findall(H-[Next,Current|Path],
        (edge(Current, Next),
         \+ member(Next, [Current|Path]),
         \+ member(Next, Visited),
         heuristic(Next, H)),
        Children),
    append(Open, Children, NewOpen),
    sort(NewOpen, Sorted),
    search(Sorted, Goal, [Current|Visited], Result).
