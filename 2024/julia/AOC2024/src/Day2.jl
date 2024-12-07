module Day2
    export run

    function run(input::AbstractString)
        lines = split_line.(split(input, "\n"))
        return count(match, lines)
    end

    function split_line(line::AbstractString)
        return  parse.(Int, split(line))
    end

    function match(input::Vector{Int})
        diffs = collect(input[i + 1] - input[i] for i in 1:length(input) - 1)
        if (diffs[1] > 0)
            return all(x -> x > 0 && x <= 3, diffs)
        else 
            return all(x -> x < 0 && x >= -3, diffs)
        end
    end

end