/* 
membro(2,[1,2,3,4]). 
--> True 
*/

membro(A,[A|X]).
membro(A,[B|X]) :- membro(A,X).
