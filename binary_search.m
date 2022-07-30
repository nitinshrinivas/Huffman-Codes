function index =  binary_search(num,w,code_in_int)    
    left = 1;
    right = w;
    flag = 0;
    while left <= right
        mid = ceil((left + right) / 2);
        if code_in_int(mid) == num
            index = mid;
            flag = 1;
            break;
        else if (code_in_int(mid) > num)
            right = mid - 1;
        else
            left = mid + 1;
        end
        end
    end
    if flag == 0
        index = -1;
    end
end
