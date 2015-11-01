function out = remove_repeated(z,States)
out = [];
finish_loop = 0;

for i = 1:length(States)
    mat = States{i};
    for j = 1:length(mat)
        k = mat{j};
        for n = 1: length(z)
            if Goal_test(z{n},k)
                z(n) = [];
                if isempty(z)
                    finish_loop = 1;
                end
                break
            end
            if finish_loop
                break
            end
        end
        if finish_loop
            break
        end  
    end
    if finish_loop
        break
    end 
end
out = z;
                