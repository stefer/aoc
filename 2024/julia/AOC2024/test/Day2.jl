using AOC2024
using TestItems

@testitem "Day 2 ascending" begin
    input = "1 3 6 7 9"
    result = AOC2024.Day2.run(input)
    @test result == 1
end

@testitem "Day 2 descending" begin
    input = "7 6 4 2 1"
    result = AOC2024.Day2.run(input)
    @test result == 1
end

@testitem "Day 2 unordered" begin
    input = "1 3 2 4 6 7"
    result = AOC2024.Day2.run(input)
    @test result == 0
end

@testitem "Day 2 zero" begin
    input = "7 6 4 4 2 1"
    result = AOC2024.Day2.run(input)
    @test result == 0
end

@testitem "Day 2 over 3" begin
    input = "7 6 2 1"
    result = AOC2024.Day2.run(input)
    @test result == 0
end

@testitem "Day 2" begin
    input = """
        7 6 4 2 1
        1 2 7 8 9
        9 7 6 2 1
        1 3 2 4 5
        8 6 4 4 1
        1 3 6 7 9"""
    result = AOC2024.Day2.run(input)
    @test result == 2
end