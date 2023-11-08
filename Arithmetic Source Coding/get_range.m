function [lower,upper] = get_range(symbols, prob_line,stream)
    lower = 0;
    upper = 1;
    
    for i = 1: length(stream)
        [lower, upper] = get_symbol_bounds(stream(i),symbols, prob_line);
        prob_line = normalize_prob_line(prob_line,lower, upper);
    end
end