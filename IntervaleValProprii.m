function r=IntervaleValProprii(d,s,m)
	if m>length(d) m=length(d); endif
	r=zeros(m+1,1);
	[r(1) r2]=LimiteValProprii(d,s);
	for k=m:-1:1
		mij=r(1)+(r2-r(1))/2;
		h=(r2-r(1))/2;
		numvp=NrValProprii(d,s,mij);
		while(numvp!=k)
			h=h/2;
			if numvp<k mij=mij+h;
			elseif numvp>k mij=mij-h;
			endif
			numvp=NrValProprii(d,s,mij);
		endwhile
		r(k+1)=mij;r2=mij;
	endfor
endfunction
	
	
	
