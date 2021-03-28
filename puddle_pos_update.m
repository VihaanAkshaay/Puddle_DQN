function [pos] = puddle_pos_update(pos,action)

random_number = rand;

%possible_actions = [ up;  down;  left;  right]
possible_actions =  [-1,0;  1,0;  0,-1;  0,1];

%updating possible actions for states in the boundaries

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

%possible actions updated with actions other than the desired action
[val,indx] = max(possible_actions==action);
possible_actions(indx(2),:) = [];

%Updating the state resulting from the action

if random_number <= 0.9
    pos = pos + action;
    
else
    for i = 1:size(possible_actions,1)
        if random_number <= 0.9 + 0.1*i/size(possible_actions,1)
            pos = pos + possible_actions(i,:);
        end
    end
end

%Westerly wind result
if pos(2) ~= 12
    if random_number >= 0.5
        pos(2) = pos(2) + 1;
    end
end

end

