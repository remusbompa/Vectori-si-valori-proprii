function vp=CalculezValProprii(d,s,m,tol)
	r=IntervaleValProprii(d,s,m);
	vp=zeros(length(r)-1,1);
	for i=1:length(r)-1
		vp(i)=Bisectie(r(i),r(i+1),d,s,tol);
	endfor
endfunction		
