% Na potrzeby zadań
:- use_module(library(assoc)).

% Może się przydać predykat wkładający elementy do 
% listy na wskazanym indeksie
insert(Element, 0, Lista, [Element|Lista]).
insert(Element, I, [H|T], [H|NT]) :-
    I > 0,
    NI is I - 1,
    insert(Element, NI, T, NT).



func_call(Fun,Gdzie,X):-
    Fun =.. List,
    insert(X,Gdzie,List,L),
    Zapytanie =.. L,
    Zapytanie.