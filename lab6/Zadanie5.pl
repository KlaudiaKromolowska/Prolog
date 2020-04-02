Result <# Function # ArgsChain :- % X <# append/3 # [1,2] # [3,4].
    initial_function(Function, IF), % IF to function(append/3 ,[])
    curry(IF, ArgsChain, Result).
 
initial_function(function(F,A), function(F,A)) :-
    !.
 
initial_function(F, function(F, [])).
 
curry(F, A # T, Result) :- % X <# append/3 # #(append/3 # [1] # [2]) # [3, 4]
    !,
    %ewaluacja A, jeżeli A jest wyrażeniem
    eval_A(A, AEval),
    curry_call(F, AEval, Result1),
    curry(Result1, T, Result).
 
curry(F, A, Result) :-
    eval_A(A, AEval),
    curry_call(F, AEval, Result).