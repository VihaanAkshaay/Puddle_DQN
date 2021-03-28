function [map] = puddle_map(goal)

% Initializing map with rewards for each state
reward_matrix = zeros(12);


% Reward -1 states
for i = 4:9
    reward_matrix(3,i) = -1;
end

for i = 4:7
    reward_matrix(i,4) = -1;
    reward_matrix(i,9) = -1;
end

reward_matrix(7,8) = -1;
reward_matrix(8,8) = -1;
reward_matrix(8,4) = -1;

for i = 4:8
    reward_matrix(9,i) = -1;
end


%reward -2 states
for i = 5:8
    reward_matrix(4,i) = -2;
end

for i = 5:6
    reward_matrix(i,5) = -2;
    reward_matrix(i,8) = -2;
end

reward_matrix(6,7) = -2;
reward_matrix(7,5) = -2;
reward_matrix(7,7) = -2;

for i = 5:7
    reward_matrix(8,i) = -2;
end

%reward -3 states
reward_matrix(5,6) = -3;
reward_matrix(5,7) = -3;
reward_matrix(6,6) = -3;
reward_matrix(7,6) = -3;


%Goal is given +10 reward
reward_matrix(goal(1),goal(2)) = 10;

map = reward_matrix;


end

