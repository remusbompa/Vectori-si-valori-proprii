function x=Thomas(d,s,b)
	n=length(d);
	x=zeros(n,1);
	aux=zeros(n,1);%elementul s(j) se salveaza in aux(j-1) la interschimbarea liniilor j-1 si j
	c=s;%diagonala de sub cea principala
	for j=2:n
		if d(j-1)==0 %se interschimba liniile consecutive j-1 si j
			t=[d(j-1) s(j-1) b(j-1)];
			d(j-1)=c(j-1); s(j-1)=d(j); aux(j-1)=s(j);b(j-1)=b(j);
			c(j-1)=t(1); d(j)=t(2); s(j)=0;b(j)=t(3);
			continue;
		endif
		t=c(j-1)/d(j-1);%eliminare gausiana
		d(j)-=t*s(j-1);
		b(j)-=t*b(j-1);
	endfor
	if d(n)==0 x(n)=1;%in cazul in care ultima line a SST ajunge 0, x(n) va putea fi oricat iar eu il aleg 1
	else x(n)=b(n)/d(n);	%(oricum vectorul obtinut se va normaliza, si va rezulta acelasi vector)
	endif
	x(n+1)=0;
	for i=n-1:-1:1%se rezolva sistemul SST
		x(i)=(b(i)-s(i)*x(i+1)-aux(i)*x(i+2))/d(i);%in cazul in care nu s-a interschimbat nimic pe linia
	endfor											%i, aux(i)=0
	x(n+1)=[];
endfunction
	
