fun insert (y:real, []) = [y]
|	insert (y:real, (x::xt)) = 
	if x < y then (x)::insert (y, xt) else
	if null(xt) andalso x < y then [x]@[y] else
	if null(xt) andalso y < x then [y]@[x] else
	if y < x then [y]@[x]@xt
	else [x]@[y]@xt 
;

fun insertsort lis = 
let
	fun loop ([], lis) = lis 
	|	loop (x::xt, lis) = 
		loop (xt, insert(x,lis))
in
	loop (lis, [])
end;
