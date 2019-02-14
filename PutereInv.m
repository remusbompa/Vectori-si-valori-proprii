function [valp vecp]=PutereInv(d,s,h,y,maxIter,tol)
	n=length(d);
	v=zeros(n,1);%vectorul A*y
	d=d';s=s';
	while maxIter>0
		maxIter--;
		z=Thomas(d-h*ones(n,1),s,y);
		y=z/norm(z);
		vecp=y;
		s=[0;s;0];
		y=[0;y;0];
		valp=0;
		for i=1:n
			valp+=y(i+1)*(s(i)*y(i)+d(i)*y(i+1)+s(i+1)*y(i+2));
		endfor
		for i=1:n
			v(i)=s(i)*y(i)+d(i)*y(i+1)+s(i+1)*y(i+2);
		endfor
		s(1)=[];y(1)=[];s(n)=[];y(n+1)=[];
		h=valp;
		if(norm(v-valp*vecp)<tol)
			break;
		endif
	endwhile
endfunction
