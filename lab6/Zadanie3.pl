:- op(500, xfx, <#). %operator przypisania wyniku funkcji do zmiennej.
                     %Zakładam, że wyjściem jest ostatni argument
%'<#'(X, Pred) :-
%    Pred =.. Lista,
%    append(Lista, [X], Lista1),
%    Zapytanie =.. Lista1,
%    call(Zapytanie).
 
:- op(450, xfy, #). %operator przypisania argumentów funkcji, np. length # [[1, 2, 3]]
                    %staje się length([1, 2, 3])
%'#'(Name, Args) :-
%  Name1 = [Name | Args]
%  Name is Name1.
 
parse_args_chain(H # T, [H|TArgs]) :-
    !,
    parse_args_chain(T, TArgs).
 
parse_args_chain(H, [H]).
 
%ver 1.
%Result <# Function # ArgsChain :-
%    %parse_args_chain(ArgsChain, Args),
%    func_call(Function, ArgsChain, Result).
 
%ver 2.
%Result <# Function # ArgsChain :-
%    parse_args_chain(ArgsChain, Args),
%    func_call(Function, Args, Result).