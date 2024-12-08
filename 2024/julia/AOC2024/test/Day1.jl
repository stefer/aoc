using AOC2024
using TestItems

@testitem "Day 1" begin
    input = """
    3   4
    4   3
    2   5
    1   3
    3   9
    3   3    
    """
    @test AOC2024.Day1.run(input) == 11
end
