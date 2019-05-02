Q = [.15,.1;.1,.12];
[V,lambda] = eig(Q);
load('-ascii', 'c10p1.txt')
meanData = mean(c10p1);

centeredData = c10p1 - meanData;
scatter(centeredData(:,1), centeredData(:,2));
i = 1;
j = 1;
w=[1,1];

while(i<100000)
if(j = 100)
  j = 1;
endif
v = centeredData(j,:)*w';
u = centeredData(j,:);
w = w + .01*((v*u')-(v'*v*w'));
i++;
j++;
endwhile
w
