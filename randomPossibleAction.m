function [action] = randomPossibleAction(state)

%possible_actions = [ up;  down;  left;  right]
possible_actions =  [-1,0;  1,0;  0,-1;  0,1];

%Getting the map position from the state value in the Q-Table
position = statetopos(state);

%Removing impossible actions for states in the edge of the map
if pos(1) == 1
    possible_actions(1,:) = [];
end

if pos(1) == 12
    possible_actions(2,:) = [];
end

if pos(2) == 1
    possible_actions(3,:) = [];
end

if pos(2) == 12
    possible_actions(4,:) = [];
end



end

