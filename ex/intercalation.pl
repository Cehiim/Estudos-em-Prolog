/*
intercala([1,3,5],[2,4,6],X).
--> X = [1,2,3,4,5,6].
*/

intercala([],L,L).
intercala(L,[],L).
intercala([A|As],[B|Bs],[A|X]) :- A =< B, intercala(As,[B|Bs],X).
intercala([A|As],[B|Bs],[B|X]) :- intercala([A|As],Bs,X).
