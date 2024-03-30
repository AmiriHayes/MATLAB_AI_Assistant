function documentation = document(matlab_function)
    if iskeyword(matlab_function)
            help matlab_function
            documentation = 1;
    else
        disp(matlab_function & "is not a matlab function. Try using ai_query to" + ...
            "determine the correct function.")
            documentation = 0;
    end
end
