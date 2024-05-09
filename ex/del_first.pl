/* 
delpri(5,[3,5,2,1,5,5,6],R). 
--> R = [3,2,1,5,5,6] 
*/

delpri(_,[],[]).
delpri(A,[A|X],X).
delpri(A,[B|X],[B|Z]) :- delpri(A,X,Z).
