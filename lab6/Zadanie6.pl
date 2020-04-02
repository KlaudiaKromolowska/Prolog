:- op(400, fx, #).
 
eval_A(#(F # ArgsChain), Wynik) :- %A jest wyrażeniem, np. #(append/3 # [1] # [2])
    !,
    Wynik <# F # ArgsChain.
 
eval_A(A, A). %A jest argumentem, np. [3, 4]