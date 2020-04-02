func_call(Nazwa/_/IndWyjsc, Wejscia, Wynik) :-
    !,
    L = [Nazwa | Wejscia], %operator | sprawia, że elementy listy jednoelementowej
                           %list zostaną rozpakowane (bo ogon podaje się jako listę)
    nth0(IndWyjsc, L1, Wynik, L),
    Zapytanie =.. L1,
    Zapytanie.