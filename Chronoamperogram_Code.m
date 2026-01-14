
% Extract time (x) and current (y) from the imported chronoamperometry data 

%Define chosen data set

Dataset= 

%Define Title of chosen data set
DatasetTitle= ''

% Extract time and current from data table from dataset ca1 or ca2
x_data = Dataset{:,1};   % Time
y_data = Dataset{:,2};   % Current

   
% Choose region of oxidation phases depending on  specific data
% Sample example shown below, using the following made up regions
% Region 1: Oxidation phase between index 30-31 seconds
% Region 2: Second Oxidation Phase between index 90-92 seconds

%For reference, I investigated Region 1


mask = (x_data >= 30) & (x_data <= 31);

x_range = x_data(mask);
y_range = y_data(mask);


%Integrate the data to find ion extraction rate
ca_integral = trapz(x_range, y_range);
disp(ca_integral)



% Perform the cumulative integration of current over time
integral_y = cumtrapz(x_data, y_data);  % Cumulative integral (integrated current)

%Print with 12 significant figures
fprintf('%.12e\n', ca_integral)

% Plot the original data (current vs. time)
figure;
hold on
plot(x_data, y_data, 'r', 'LineWidth', 2, 'DisplayName', 'Current Vs Time');
title('Region 1 Plot', DatasetTitle);
xlabel('Time (seconds)');
ylabel('Current (Amps)');
grid on;

% x limit will vary depending on region of investigation
xlim([30 31])
legend;


%Plot of the entire chronoamperometry region
figure;
plot(x_data, y_data, 'r', 'LineWidth', 2, 'DisplayName', 'Current Vs Time');
title('Chronoamperogram Plot', DatasetTitle);
xlabel('Time (seconds)');
ylabel('Current (Amps)');
grid on;




