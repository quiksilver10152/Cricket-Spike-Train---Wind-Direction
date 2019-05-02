W = [.6,.1,.1,.1,.1;.1,.6,.1,.1,.1;.1,.1,.6,.1,.1;.1,.1,.1,.6,.1;.1,.1,.1,.1,.6];
u = [.6;.5;.6;.2;.1];
M = [-.5,0,.5,.5,0;0,-.5,0,.5,.5;.5,0,-.5,0,.5;.5,.5,0,-.5,0;0,.5,.5,0,-.5];

[V,eigM] = eig(M);
eigVal = eig(M)
h = W*u

i = 1;

hDotEig = [];

while (i<=5)
  temp2 = dot(h,V(i,:));
  hDotEig = [hDotEig temp2];
  i++;
endwhile

hDotEig  
eigVal
V
r=1;
f = (hDotEig(r)/(1-eigVal(r)))*V(r,:);
f(1)
f(2)
f(3)
f(4)
f(5)

