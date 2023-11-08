function [lower,upper] = get_symbol_bounds(symbol,symbols,prob_line)
    for i = 1 : length(symbols)
        if symbols(i) == symbol
            lower = prob_line(i);
            upper = prob_line(i+1);
            return 
        end
    end
    perror("Symbol is not found");
end