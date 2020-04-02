% Na potrzeby zadań
:- use_module(library(assoc)).

% Może się przydać predykat wkładający elementy do 
% listy na wskazanym indeksie
insert(Element, 0, Lista, [Element|Lista]).
insert(Element, I, [H|T], [H|NT]) :-
    I > 0,
    NI is I - 1,
    insert(Element, NI, T, NT).
	
	
findall_assoc(Key,Goal,_) :-
        call(Goal),
        assert(findallsol(Key-t)),
        fail.

findall_assoc(_,_,Solutions) :-
        collect(List),
       list_to_assoc(List,Solutions).

collect(Solutions) :-
        retract(findallsol(Template)),
        !,
        Solutions = [Template|RestSols],
        collect(RestSols).
collect([]).
