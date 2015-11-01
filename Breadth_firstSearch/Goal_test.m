function D = Goal_test(state_start,final_state)

X = abs(state_start-final_state);
if sum(X(:))>0
    D = false;
else
    D = true;
end