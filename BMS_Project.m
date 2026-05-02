clc;
clear;
close all;

t = 0:1:100;

voltage = 12 - 0.03*t;
temp = 25 + 0.3*t;   

figure;

subplot(2,1,1)
plot(t, voltage, 'b', 'LineWidth', 2)
xlabel('Time')
ylabel('Voltage')
title('Battery Voltage Discharge')
grid on

subplot(2,1,2)
plot(t, temp, 'r', 'LineWidth', 2)
xlabel('Time')
ylabel('Temperature')
title('Battery Temperature Rise')
grid on

disp('--- BMS Monitoring ---')

for i = 1:length(t)
    
    if voltage(i) < 9.5
        disp(['Time ', num2str(t(i)), ': Low Voltage Warning!'])
    end
    
    if temp(i) > 40
        disp(['Time ', num2str(t(i)), ': High Temperature Warning!'])
    end
    
end

disp('System Monitoring Completed')