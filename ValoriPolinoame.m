function P=ValoriPolinoame(d,s,val_lambda)
	n=length(d);
	P=[];
	if n==0
		P=[1 P];return;
	endif
	if n==1;
		P=[1 d(1)-val_lambda P];return;
	endif
	d1=d;d1(n)=[];s1=s;s1(n-1)=[];
	P=ValoriPolinoame(d1,s1,val_lambda);
	P=[P (d(n)-val_lambda)*P(n)-s(n-1)^2*P(n-1)];
endfunction
