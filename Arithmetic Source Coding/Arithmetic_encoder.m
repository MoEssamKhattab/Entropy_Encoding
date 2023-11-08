function code = Arithmetic_encoder(pmf,stream)
    [lower,upper] = get_range(pmf,stream);
    diff = upper - lower;
    n = ceil(abs(log2(diff)));          % the number of bits representing our Arithmetic Code
    code = zeros(1,n);
    exact_lower = 0;
    
    for i= 1:n
        if(lower >= exact_lower + 0.5^n)
            code(i) = 1;
            exact_lower = exact_lower + 0.5^n;
        %%else
            %%code(i) = 0;    % DN, it's already 0
        end
    end
end