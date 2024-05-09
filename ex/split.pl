/* 
split([1,2,3,4,5],L1,L2). 
--> L1 = [1,3,4]
--> L2 = [2,4]
*/

split([],[],[]).
split([A],[A],[]).
split([A,B|X],[A|As],[B|Bs]) :- split(X,As,Bs).
