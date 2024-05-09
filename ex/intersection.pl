/* 
inter([1,2,3,4],[4,5,2,9],R). 
--> R = [2,4] 
*/

inter([],_,[]).
inter(_,[],[]).
inter([A|X],L,[A|Z]) :- membro(A,L), inter(X,L,Z).
inter([A|X],L,Z) :- inter(X,L,Z).
