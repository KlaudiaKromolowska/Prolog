% Na potrzeby zadań
:- use_module(library(assoc)).

% Może się przydać predykat wkładający elementy do 
% listy na wskazanym indeksie
insert(Element, 0, Lista, [Element|Lista]).
insert(Element, I, [H|T], [H|NT]) :-
    I > 0,
    NI is I - 1,
    insert(Element, NI, T, NT).


 klucz_mniejszy_od_wartosci(K-V) :- K < V.


    include_assoc(_,X,_):-
        empty_assoc(X),!.

    include_assoc(Filtr,Tab,Wynik):-
        min_assoc(Tab,Key,Value),
        del_min_assoc(Tab,_,_,Tab1),
        (call(Filtr,Key-Value) ->
            (include_assoc(Filtr,Tab1,Wynik1),
            put_assoc(Key,Wynik1,Value,Wynik));
        % else
        include_assoc(Filtr,Tab1,_)).