fun zip x [] = []
| 	zip [] y = []
|	zip(x::xt) (y::yt) = (x,y)::(zip xt yt);

fun greaterThan [] y = []
| 	greaterThan x y = 
	if hd(x) > y then (hd(x))::greaterThan (tl x) y else 
	greaterThan (tl x) y;

fun reduction y [] = 0
|  	reduction y (x::xt) = 
	if null(xt) then x else
	if null(tl xt) then op y (x, (hd(xt))) else
	let 
		val bt = [op y (x, hd(xt))]@(tl xt);
	in
		reduction y bt
	end;
  
