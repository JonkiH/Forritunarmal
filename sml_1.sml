fun zip x [] = []
| 	zip [] y = []
|	zip(x::xt) (y::yt) = (x,y)::(zip xt yt);

fun greaterThan [] y = []
| 	greaterThan x y = 
	if hd(x) > y then (hd(x))::greaterThan (tl x) y else 
	greaterThan (tl x) y;

fun reduction y [] = 0
|  	reduction y x = 
	if null(tl x ) then hd x else
	op y (hd(x), reduction y (tl x));

 
