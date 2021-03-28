function [QTable] = defineQTable()

%Initializing Q-Table for the problem
%each row in this table represents a state/position in the map
%each column in this table represents possible actions and the q value for each action corresponding to the state. 

QTable = zeros(144,4);

%'s' in Q_Table relates tp 'i,j' in map as
%i = mod(s,12); if i == 0: i = 12;
%j = floor(s/12) + 1;if i == 0: j = j - 1;
%s = 12*(j-1) + i

%columns are encoded in the following way
%up = 1 = [-1,0] in action
%down = 2 = [1,0] in action
%left = 3 = [0,-1] in action
%right = 4 = [0,1] in action

end

