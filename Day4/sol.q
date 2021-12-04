
example:read0`:example.txt
numbers:"J"$"," vs first example

input:read0`:input.txt
input_nums:"J"$"," vs first input
board:{[row;bc](5*f row)_til b:(5*1+f:floor each til[bc]%5)row}
f1:{[n;b]
	boards:b where not (::)~'b:value each 2_b;

	f:{[nums;boards;x]	
		m:(|/)boards=/:(pos:4+x)#nums;
		
		if[max row:min each m;
			:(m b;boards b:board[;count boards]first where row;nums pos-1)];
		if[max cl:min each m:raze flip each 5 cut m;
			:(m b;raze[flip each 5 cut boards] b:board[;count boards]first where cl;nums pos-1)
		];
		
		.z.s[nums;boards;x+1]
		};
	r:f[n;boards;0];
	r[2]*sum (+/')r[1]@'where each not r[0]
	}

board2:{[row;bc]r:(5*f:f row)_til b:(5*1+f:floor each til[bc]%5)row;(r;f)}
f2:{[n;b]
	boards:b where not (::)~'b:value each 2_b;
	wins:(7h$(c:count boards)%5)#0;
	lwr:lwc:();
	
	f:{[c;wins;lwr;lwc;nums;boards;x]	
		m:(|/)boards=/:(pos:4+x)#nums;
		if[max row:min each m;
			if[count r:where[row]except lwr;
				b:board2[;c]each r;
				lwr,:r;
				bwins:wins;
				wins[b[;1]]+:1;
				if[min[wins]&1=sum w:(-/)0<(wins;bwins);
					:(first m b;first boards b:b[;0]where b[;1]=first where w;nums pos-1)];
				]];
		if[max cl:min each m:raze flip each 5 cut m;
			if[count r:where[cl]except lwc;
				b:board2[;c]each r;
				lwc,:r;
				bwins:wins;
				wins[b[;1]]+:1;
				if[min[wins]&1=sum w:(-/)0<(wins;bwins);
					:(first m b;first raze[flip each 5 cut boards] b:b[;0]where b[;1]=first where w;nums pos-1)];
				]];
		/ if[x>50;break;];
		.z.s[c;wins;lwr;lwc;nums;boards;x+1]
		};
	r:f[c;wins;lwr;lwc;n;boards;0];
	r[2]*sum (+/')r[1]@'where each not r[0]
	}