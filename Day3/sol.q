input:"B"$''read0`:input.txt
example:"B"$''read0`:example.txt
f:{
	c:count x;
	gamma:2 sv m:(c%2)<=sum each flip x;
	gamma*2 sv not m
	}

f2:{
	c:til count first x; / Number of bits

	{if[1=c:count x;:x];
		w:(where not@;where)(c%2)<=s:sum flip[x]y;
		x w[s]
		}[x]/[c]
	}

	{if[1=c:count x;:x];w:(where not@;where)(c%2)<=sum s:flip[x]y;.z.s[1_'x w[s]]}[example]