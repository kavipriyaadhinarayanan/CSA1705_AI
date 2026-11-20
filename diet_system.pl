
% Disease Facts
disease(diabetes).
disease(high_bp).
disease(obesity).
disease(anemia).
disease(fever).

% Diet Suggestions
diet(diabetes, 'Low sugar food and vegetables').
diet(high_bp, 'Low salt food and fruits').
diet(obesity, 'Low calorie food and vegetables').
diet(anemia, 'Iron rich food like spinach').
diet(fever, 'Healthy food and plenty of fluids').

% Rule to suggest diet
suggest_diet(Disease, Diet) :-
    disease(Disease),
    diet(Disease, Diet).

% Display Diet
show_diet(Disease) :-
    suggest_diet(Disease, Diet),
    write('Suggested Diet: '),
    write(Diet),
    nl.
