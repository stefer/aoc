module Day4

export run

directions = [
    [( 1, 0), ( 2, 0), ( 3, 0)],
    [( 1, 1), ( 2, 2), ( 3, 3)],
    [( 0, 1), ( 0, 2), ( 0, 3)],
    [(-1, 1), (-2, 2), (-3, 3)],
    [(-1, 0), (-2, 0), (-3, 0)],
    [(-1,-1), (-2,-2), (-3,-3)],
    [( 0,-1), ( 0,-2), ( 0,-3)],
    [( 1,-1), ( 2,-2), ( 3,-3)]
]

function run(input::String)
    grid = make_grid(split(input, "\n"))
    starts = findall(x -> x == 'X', grid)
    return sum(map(s -> count_matching_directions(grid, s), starts))
end

function make_grid(lines::Vector{SubString{String}})
    return stack([(char for char in lines[i]) for i in 1:length(lines)])
end

function count_matching_directions(grid::Matrix{Any}, idx::CartesianIndex{2})
    x, y = Tuple(idx)
    return length(filter(path -> (check_path(grid, x, y, path)), directions))
    # return count(path -> (check_path(grid, x, y, path)), paths) - gets type error here
end

function check_path(grid::Matrix{Any}, x::Int, y::Int, path::Vector{Tuple{Int, Int}})
    return all(check_one(grid, x+ox, y+oy, i) for (i,(ox, oy)) in enumerate(path))
end

pattern = "MAS"

function check_one(grid::Matrix{Any}, x::Int, y::Int, i::Int)
    return checkbounds(Bool, grid, x, y) && grid[x, y] == pattern[i]
end

end