function [new_prob_line] = normalize_prob_line(prob_line, low, high)
    new_prob_line = (high - low) .* prob_line + low;
end