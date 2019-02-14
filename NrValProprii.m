function numvp=NrValProprii(d,s,val_lambda)
	P=ValoriPolinoame(d,s,val_lambda);
	n=length(d);
	numvp=0;
	for i=1:n
		if P(i)*P(i+1)<0 numvp++;
		elseif P(i+1)==0 numvp++;i++;
		endif
	endfor
endfunction
			
