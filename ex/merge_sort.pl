/*
msort([7,3,6,1],X).
--> X = [1,3,6,7]
*/

split2(L,R1,R2) :- split2(L,[],[],R1,R2).
split2([],R1,R2,R1,R2).
split2([A],L1,R2,[A|L1],R2).
split2([A,B|X],L1,L2,R1,R2) :- split2(X,[A|L1],[B|L2],R1,R2).

intercala([],L,L).
intercala(L,[],L).
intercala([A|As],[B|Bs],[A|X]) :- A =< B, intercala(As,[B|Bs],X).
intercala([A|As],[B|Bs],[B|X]) :- intercala([A|As],Bs,X).

msort([],[]).
msort([A],[A]).
msort(L,R) :- split2(L,L1,L2), msort(L1,R1), msort(L2,R2), intercala(R1,R2,R).
