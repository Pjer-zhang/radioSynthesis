close all
clear
num_k = 48;

angle_k = linspace(0,2*pi*(num_k-1)/num_k,num_k);

node_x = cos(angle_k);
node_y = sin(angle_k);


idx_k = nchoosek(1:num_k,2);

vec_1_x = node_x([idx_k(:,1);idx_k(:,2)]);
vec_1_y = node_y([idx_k(:,1);idx_k(:,2)]);
vec_2_x = node_x([idx_k(:,2);idx_k(:,1)]);
vec_2_y = node_y([idx_k(:,2);idx_k(:,1)]);



figure(1)
h=plot(node_x,node_y,'k.','markersize',15);


axis equal
xlim([-1.2 1.2])
ylim([-1.2 1.2])

set(gcf,'Position',[10 200 360   360]);

hold on

plot([vec_1_x;vec_2_x],[vec_1_y;vec_2_y],'b');

print('nodes2.png','-dpng','-r700')

figure(2)
plot([vec_1_x-vec_2_x,0],[vec_1_y-vec_2_y,0],'k.','markersize',2)
axis equal
xlim([-2.4 2.4])
ylim([-2.4 2.4])
hold on
set(gcf,'position',[107   -538   1200   1200]);
box off
axis off
clear
print('uvbase.png','-dpng','-r1500')
% 
% box on 
% axis on
% h=plot(rep_first(node_x)+1,rep_first(node_y),'b');
% set(gcf,'Position',[380 200 460   460]);
% print('uv2.png','-dpng','-r700')
% 
% function res = rep_first(array)
%     res = [array(:);array(1)];
% end
% 
