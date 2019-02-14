function [limita_inf limita_sup]=LimiteValProprii(d,s)
	n=length(d);
	t=zeros(n,1);
	s=[0;s;0];
	t(1:n)=abs(s(1:n))+abs(s(2:n+1));
	limita_inf=min(d-t);
	limita_sup=max(d+t);
endfunction
