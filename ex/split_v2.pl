/* 
split2([1,2,3,4,5],L1,L2). 
--> L1 = [1,3,5]
--> L2 = [2,4]
*/

split2(L,R1,R2) :- split2(L,[],[],R1,R2).
split2([],R1,R2,R1,R2).
split2([A],L1,R2,[A|L1],R2).
split2([A,B|X],L1,L2,R1,R2) :- split2(X,[A|L1],[B|L2],R1,R2).
