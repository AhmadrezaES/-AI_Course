function z = puzzle_8_solving(state_start,final_state)

States = { {state_start}};
Nums = {[1]};
D = Goal_test(state_start,final_state);

while D == false
    current_states = States{end};
    
    next_state = [];
    next_num = [];
    for i = 1:length(current_states)
        ST = current_states{i};
        D = Goal_test(ST,final_state); 
        if D
            gaol_num = i;
            break
        else
            z = successor(ST);
            %z = remove_repeated(z,States);
            %if isempty(z)
            %    break
            %end
            next_state = [next_state z];
            next_num = [next_num  i*ones(1,length(z))];
        end
    end
    if D
        break
    else
        States = [States {next_state}];
        Nums = [Nums {next_num}];
    end
end

gaol_path = [];
for i = length(States):-1:1
    gaol_path = [gaol_path {States{i}{gaol_num}}];
    gaol_num = Nums{i}(gaol_num);
end
z = gaol_path;
            
        
    
    
    
