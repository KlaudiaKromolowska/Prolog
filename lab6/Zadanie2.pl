func_call(Nazwa/LArg, Wejscia, Wynik) :- %zakładamy, że wyjściem jest ostatni argument
    !,
    func_call(Nazwa/LArg/LArg, Wejscia, Wynik).
 
func_call(Nazwa, Wejscia, Wynik) :-
    current_predicate(Nazwa/LArg), %przy pomocy tego predykatu ustalimy l. argumentów
    func_call(Nazwa/LArg/LArg, Wejscia, Wynik).