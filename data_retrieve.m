data = csvread('att.csv');
timeStamp = 40;

desRoll = data(:,2);
roll = data(:,3);

desPitch = data(:,4);
pitch = data(:,5);

plot(desPitch);
xlabel('Timestamp')
ylabel('degrees')

hold on;

plot(pitch);

%%
% Set up a training set
t_index_start = 4780;
t_index_end = 7800;
input = desPitch(4780:7800);
output = pitch(4780:7800);

plot(input)
hold on;
plot(output)

axis tight

%% 
% Set up a validation set
v_index_start = 8570;
v_index_end = 11350;

v_input = desPitch(v_index_start:v_index_end);
v_output = pitch(v_index_start:v_index_end);

plot(v_input)
hold on;
plot(v_output)


%%
