/*
tam([1,2,3,4],X).
--> X = 4
*/

tam([],0).
tam([A|As],N) :- tam(As,N2), N is N2+1.
