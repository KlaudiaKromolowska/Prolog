%currying - dekompozycja funkcji wieloargumentowej na wiele funkcji jednoargumentowych.
 
%curry_call(function(Name/LArg/IndWyjscia, ZapamietaneWejscia), Wejscie, Wynik) :-
%    LArgWejsc is LArg - 2,
%    length(ZapamietaneWejscia, L),
%    L < LArgWejsc, %przypadek dokładania argumentów
%    append(ZapamietaneWejscia, [Wejscie], NoweZapamietaneWejscia),
%    Wynik = function(Name/LArg/IndWyjscia, NoweZapamietaneWejscia).
 
%curry_call(function(Name/LArg/IndWyjscia, ZapamietaneWejscia), Wejscie, Wynik) :-
%    append(ZapamietaneWejscia, [Wejscie], Args),
%    func_call(Name/LArg/IndWyjscia, Args, Wynik).
 
%wersja dla niepełnych nazw funkcji (bez ind wyjscia)
 
curry_call(function(Name/LArg, ZapamietaneWejscia), Wejscie, Wynik) :-
    LArgWejsc is LArg - 2,
    length(ZapamietaneWejscia, L),
    L < LArgWejsc, %przypadek dokładania argumentów
    append(ZapamietaneWejscia, [Wejscie], NoweZapamietaneWejscia),
    Wynik = function(Name/LArg, NoweZapamietaneWejscia).
 
curry_call(function(Name/LArg, ZapamietaneWejscia), Wejscie, Wynik) :-
    append(ZapamietaneWejscia, [Wejscie], Args),
    func_call(Name/LArg, Args, Wynik).