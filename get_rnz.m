function [X Y Z dt]=get_rnz(XYZsat,ranges)
X=-1;
Y=-1;
Z=-1;
dt=-1;
Rx=0;
Ry=0;
Rz=0;
c=299792458;
A=XYZsat(:,1:3);
X=0;Y=0;Z=0;dt=0.0;
for it=1:20
a=[X Y Z];
R=[a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a];


P=ranges';

n=length(P);
for ( i = 1: n )

PR(i)=sqrt((A(i,1)-R(1,1))^2+(A(i,2)-R(1,2))^2....
+(A(i,3)-R(1,3))^2);

D(i,:) = [(A(i,:) - R(i,:)) / PR(i) 1];
L(i)=PR(i)-P(i);
end; % for (i =1: n )


G=D;%
DL=L;%
Dr=inv(G'*G)*G'*DL';

a1=a+(Dr(1:3))';
[it, sqrt(Dr(1)^2+Dr(2)^2+Dr(3)^2)];
if sqrt(Dr(1)^2+Dr(2)^2+Dr(3)^2)<0.0015

break
end;
X=a1(1);
Y=a1(2);
Z=a1(3);
a=[X Y Z];
end;
dt=0;

end
