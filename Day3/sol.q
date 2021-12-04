input:"B"$''read0`:input.txt
example:"B"$''read0`:example.txt
f:{
	c:count x;
	gamma:2 sv m:(c%2)<=sum each flip x;
	gamma*2 sv not m
	}

f2:{(*/)2 sv' first each {[x;y;z;v]if[1=c:count x;:x];w:(where not@;where) v[(c%2);sum s:flip[x][y-z]];.z.s[x w[s];y;z-1;v]}[x;c;c:count first x]each (<=;>)}
