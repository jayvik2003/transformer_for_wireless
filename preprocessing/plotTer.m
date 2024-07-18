% figure;
% plot(idx, lg(1,1:13), 'DisplayName', 'LG');
% hold on;
% plot(idx, sm(1,1:13), 'DisplayName', 'SM');
% plot(idx, CNN1D(1,1:13), 'DisplayName', '1D CNN');
% plot(idx, AMCNet(1,1:13), 'DisplayName', 'AMCNet');
% plot(idx, ResNet(1,1:13), 'DisplayName', 'ResNet');
% plot(idx, MCFormer(1,1:13), 'DisplayName', 'MCFormer');
% 
% ylim([0 100]);
% yticks([0 50 100]);
% 
% % Add labels and legend
% xlabel('Index');
% ylabel('Value');
% title('Performance Comparison of Different Models(NO CHannel)');
% legend('show');
% 
% % Grid on for better readability
% grid on;
% hold off;
% 
a = ["None","TGX","TGax","Releigh"];
for i=1:4
figure;
plot(idx, LG(i,1:13), 'DisplayName', "LG",'Marker','o');
hold on;
plot(idx, SM(i,1:13), 'DisplayName', "SM",'Marker','o');
plot(idx, CNN1D(i,1:13), 'DisplayName',"CNN1D",'Marker','o');
plot(idx, AMCNet(i,1:13), 'DisplayName', "AMCNet",'Marker','o');
plot(idx, ResNet(i,1:13), 'DisplayName', "ResNet",'Marker','o');
plot(idx, MCFormer(i,1:13), 'DisplayName', 'MCFormer','Marker','o');

ylim([0 100]);
yticks([0 50 100]);

% Add labels and legend
xlabel('Index');
ylabel('Value');
title('Performance Comparison of Different Models ');
legend('show');

% Grid on for better readability
grid on;
hold off;

end  
% figure;
% plot(idx, lg(3,1:13), 'DisplayName', 'LG');
% hold on;
% plot(idx, sm(3,1:13), 'DisplayName', 'SM');
% plot(idx, CNN1D(3,1:13), 'DisplayName', '1D CNN');
% plot(idx, AMCNet(3,1:13), 'DisplayName', 'AMCNet');
% plot(idx, ResNet(3,1:13), 'DisplayName', 'ResNet');
% plot(idx, MCFormer(3,1:13), 'DisplayName', 'MCFormer');
% 
% ylim([0 100]);
% yticks([0 50 100]);
% 
% % Add labels and legend
% xlabel('Index');
% ylabel('Value');
% title('Performance Comparison of Different Models(TGAX)');
% legend('show');
% 
% % Grid on for better readability
% grid on;
% hold off;
% 
% 
% 
% 
% 
% figure;
% plot(idx, lg(4,1:13), 'DisplayName', 'LG');
% hold on;
% plot(idx, sm(4,1:13), 'DisplayName', 'SM');
% plot(idx, CNN1D(4,1:13), 'DisplayName', '1D CNN');
% plot(idx, AMCNet(4,1:13), 'DisplayName', 'AMCNet');
% plot(idx, ResNet(4,1:13), 'DisplayName', 'ResNet');
% plot(idx, MCFormer(4,1:13), 'DisplayName', 'MCFormer');
% 
% ylim([0 100]);
% yticks([0 50 100]);
% 
% % Add labels and legend
% xlabel('Index');
% ylabel('Value');
% title('Performance Comparison of Different Models(Rayleigh)');
% legend('show');
% 
% % Grid on for better readability
% grid on;
% hold off;
