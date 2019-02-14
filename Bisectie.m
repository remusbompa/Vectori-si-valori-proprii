function p=Bisectie(a,b,d,s,tol)
	p=a+(b-a)/2;
	while abs(ValoriPolinoame(d,s,p)(length (d) + 1))>tol&&abs(b-a)>tol
		if ValoriPolinoame(d,s,a)(length (d) + 1)*ValoriPolinoame(d,s,p)(length (d) + 1)<0
			b=p;
		else
			a=p;
		endif
		p=a+(b-a)/2;
	endwhile
endfunction
