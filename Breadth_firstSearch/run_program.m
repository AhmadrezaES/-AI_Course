% %%
% clc
% state = [1,2,3;4,5,6;8,7,0];
% z = successor(state);
% for i = 1:length(z)
%     z{i}-state
% end
% %%
% state_start = [0,1,2;3,4,5;6,8,7];
% final_state = [0,1,2;3,4,5;6,7,8];
% Goal_test(state_start,final_state)
%%
clc
state_start = [1,4,2;3,7,5;6,8,0];
final_state = [0,1,2;3,4,5;6,7,8];
z = puzzle_8_solving(state_start,final_state);
z{:}