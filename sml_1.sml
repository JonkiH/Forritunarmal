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
  
fun partition look li = 
let
	fun loop (look, li as x::xt, yes, no) = 
		if look x then (loop (look, xt, (yes@[x]),no)) 
		else (loop (look, xt, yes, (no@[x])))
	|	loop (look, [], [], []) = []
	|	loop (look, [], yes, no) = 
		let val li = (yes,no)
		in [li]
		end	
in
	loop (look, li, [], [])
end;

partition Char.isLower [#"P",#"a",#"3",#"%",#"b"];
