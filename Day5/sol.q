e:(value') each " -> "vs/:read0`:example.txt
/ Part 1

// example
sum sum 1<({.[x;y;+;1]}/)[(m,m:1+(max/)e)#0;e[w;1]+((::;neg)@/:0>d w)@''({$[count x;x;0]}') each(til') each ({$[x;x+1;0]}')each abs d w:where max each 0='d:(-/')e]

// input
sum sum 1<({.[x;y;+;1]}/)[(m,m:1+(max/)i)#0;i[w;1]+((::;neg)@/:0>d w)@''({$[count x;x;0]}') each(til') each ({$[x;x+1;0]}')each abs d w:where max each 0='d:(-/')i]


/ Part 2
// example
sum sum 1<({{.[x;(y;z);+;1]}/[x;y 0;y 1] }/)[(m,m:1+(max/)e)#0;e[;1]+((::;neg)@/:0>d)@''({$[count x;x;0]}') each(til') each ({$[x;x+1;0]}')each abs d:(-/')e]
// input
sum sum 1<({{.[x;(y;z);+;1]}/[x;y 0;y 1] }/)[(m,m:1+(max/)i)#0;i[;1]+((::;neg)@/:0>d)@''({$[count x;x;0]}') each(til') each ({$[x;x+1;0]}')each abs d:(-/')i]