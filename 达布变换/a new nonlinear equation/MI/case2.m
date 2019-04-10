clc
clear

a=0.5;d=1;
c=[4,12,20];
k=-20:0.05:20;

g=zeros(3,length(k));
for i=1:3
    g(i,:)=k.*sqrt(4*(a*c(i)-c(i)*d-d)*(a*c(i)-c(i)*d+d).*k.^2 -c(i)^2*(a-d)^3*(a*c(i)^2-c(i)^2*d+4*a))./((a^2-2*a*d+d^2-k.^2)*(a-d));
end

% g1=k.*sqrt(4*(a*c1-c1*d-d)*(a*c1-c1*d+d).*k.^2 -c1^2*(a-d)^3*(a*c1^2-c1^2*d+4*a))./((a^2-2*a*d+d^2-k.^2)*(a-d));
% g2=k.*sqrt(4*(a*c2-c2*d-d)*(a*c2-c2*d+d).*k.^2 -c2^2*(a-d)^3*(a*c2^2-c2^2*d+4*a))./((a^2-2*a*d+d^2-k.^2)*(a-d));
% g3=k.*sqrt(4*(a*c3-c3*d-d)*(a*c3-c3*d+d).*k.^2 -c3^2*(a-d)^3*(a*c3^2-c3^2*d+4*a))./((a^2-2*a*d+d^2-k.^2)*(a-d));
% g4=k.*sqrt(4*(a*c4-c4*d-d)*(a*c4-c4*d+d).*k.^2 -c4^2*(a-d)^3*(a*c4^2-c4^2*d+4*a))./((a^2-2*a*d+d^2-k.^2)*(a-d));
% g5=k.*sqrt(4*(a*c5-c5*d-d)*(a*c5-c5*d+d).*k.^2 -c5^2*(a-d)^3*(a*c5^2-c5^2*d+4*a))./((a^2-2*a*d+d^2-k.^2)*(a-d));
% 

plot(k,g(1,:),'b:','LineWidth',2.5);hold on;
plot(k,g(2,:),'g-','LineWidth',2.5);hold on;
plot(k,g(3,:),'r--','LineWidth',2.5);

plot([-20,20],[0,0],'black');
plot([0,0],[-40,40],'black');
set(gca,'FontName','Times New Roman','FontWeight','Bold','FontSize',14)
xlabel('k','FontName','Times New Roman','FontWeight','Bold','FontSize',16);
ylabel('g(k)','FontName','Times New Roman','FontWeight','Bold','FontSize',16);

legend('c=4','c=12','c=20')
