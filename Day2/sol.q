input:("SI";" ")0:`:input.txt
example:(`forward`down`forward`up`down`forward;5 5 8 3 8 2i)

f1:{t:exec sum dis by dir from flip `dir`dis!x;t[`forward]*t[`down]-t`up}

f2:{
	t:flip `dir`dis!x;
	t:update aim:dis from t where dir=`down;
	t:update aim:neg dis from t where dir=`up;
	t:update aimc:sums aim from t;
	t:update depth:aimc*dis from t where dir=`forward;
	(first exec sum dis from t where dir=`forward)*first exec sum depth from t
	}