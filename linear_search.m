function pos = linear_search(w,ele,code_in_int)
    for i=1:w
        if(code_in_int(i,1) == ele)
            pos = i;
        end
    end
end