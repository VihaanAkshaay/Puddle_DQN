function [position] = statetopos(state)

i = mod(state,12); 
j = floor(state/12) + 1;


if i == 0
    i = 12;
    j = j - 1;
end

position = [i,j];
end

