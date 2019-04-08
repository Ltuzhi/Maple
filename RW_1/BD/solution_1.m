clear
clc
%N=1时怪波解的图像
% x=-3:0.01:3;
% y=-15:0.01:15;
% [x,y]=meshgrid(x,y);
% 
% %u2的图（复数，取模画图）
% u1=rogue_wave_1_u(x,y);
% figure(1)
% mesh(x,y,abs(u1));
% view(-55,30);hold on;
% 
%w2的图（实数，直接画图）
x=-3:0.01:3;
y=-8:0.01:10;
[x,y]=meshgrid(x,y);
w1=rogue_wave_1_w(x,y);
figure(2)
mesh(x,y,w1);
view(-55,30);
