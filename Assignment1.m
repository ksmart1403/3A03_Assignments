%% Assignment 1 
% Testing for causality, linearity, time variance, and memory of each system
% All functions assume zero initial conditions before first time step value, and same for x after the last time step value 

%% System 1 
clc
clear 
close all

fprintf('SYSTEM 1:\n\n');
system = @system1;

% linearity - normal impulse
[f, f1, f2] = linearity(system, -2:2, [0 0 5 0 0], [1 0 0 0 0]);

% linearity - unit step
[f3, f4, f5] = linearity(system, -2:2, [0 1 1 1 0], [0 1 1 1 0]);


% causality - normal impulse
[g1] = causality(system, -2:2, [0 0 1 0 0]);
% causality - scaled impulse 
[g2] = causality(system, -2:2, [0 0 1 0 0]);
% causality - unit step
[g3] = causality(system, -2:2, [0 0 1 1 1]);

% time invarience - right shift 
[h1] = timeinvarience(system, -4:4, [0 0 1 0 0 0 0 0 0],5);
% time invarience - left shift and step function
[h2] = timeinvarience(system, -4:4, [0 0 1 1 1 0 0 0 0],-5);

% memory - normal impulse
[i1] = mymemory(system, -3:3, [0 0 1 0 0 0 0]);

% memory - scaled impulse
[i2] = mymemory(system, -3:3, [0 0 5 0 0 0 0]);

% memory - step function 
[i3] = mymemory(system, -3:3, [0 0 1 1 1 0 0]);


%% System 2
clc
clear 
close all

fprintf('SYSTEM 2:\n\n');
system = @system2;

% linearity - normal impulse
[f, f1, f2] = linearity(system, -2:2, [0 0 5 0 0], [1 0 0 0 0]);

% linearity - unit step
[f3, f4, f5] = linearity(system, -2:2, [0 1 1 1 0], [0 1 1 1 0]);


% causality - normal impulse
[g1] = causality(system, -2:2, [0 0 1 0 0]);
% causality - scaled impulse 
[g2] = causality(system, -2:2, [0 0 1 0 0]);
% causality - unit step
[g3] = causality(system, -2:2, [0 0 1 1 1]);

% time invarience - right shift 
[h1] = timeinvarience(system, -4:4, [0 0 1 0 0 0 0 0 0],5);
% time invarience - left shift and step function
[h2] = timeinvarience(system, -4:4, [0 0 1 1 1 0 0 0 0],-5);

% memory - normal impulse
[i1] = mymemory(system, -3:3, [0 0 1 0 0 0 0]);

% memory - scaled impulse
[i2] = mymemory(system, -3:3, [0 0 5 0 0 0 0]);

% memory - step function 
[i3] = mymemory(system, -3:3, [0 0 1 1 1 0 0]);


%% System 3
clc
clear 
close all

fprintf('SYSTEM 3:\n\n');
system = @system3;

% linearity - normal impulse
[f, f1, f2] = linearity(system, -2:2, [0 0 5 0 0], [1 0 0 0 0]);

% linearity - unit step
[f3, f4, f5] = linearity(system, -2:2, [0 1 1 1 0], [0 1 1 1 0]);


% causality - normal impulse
[g1] = causality(system, -2:2, [0 0 1 0 0]);
% causality - scaled impulse 
[g2] = causality(system, -2:2, [0 0 1 0 0]);
% causality - unit step
[g3] = causality(system, -2:2, [0 0 1 1 1]);

% time invarience - right shift 
[h1] = timeinvarience(system, -4:4, [0 0 1 0 0 0 0 0 0],5);
% time invarience - left shift and step function
[h2] = timeinvarience(system, -4:4, [0 0 1 1 1 0 0 0 0],-5);

% memory - normal impulse
[i1] = mymemory(system, -3:3, [0 0 1 0 0 0 0]);

% memory - scaled impulse
[i2] = mymemory(system, -3:3, [0 0 5 0 0 0 0]);

% memory - step function 
[i3] = mymemory(system, -3:3, [0 0 1 1 1 0 0]);

