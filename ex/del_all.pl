/* 
delall(5,[3,5,2,1,5,5,6],R). 
--> R = [3,2,1,6] 
*/

delall(_,[],[]).
delall(A,[A|X],Z) :- delall(A,X,Z).
delall(A,[B|X],[B|Z]) :- delall(A,X,Z).
