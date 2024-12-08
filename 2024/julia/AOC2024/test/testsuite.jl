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

@testitem "Day3 gibberish" begin
    input = "cjhbdc7671239e8=/&=(/)"
    result = AOC2024.Day3.run(input)
    @test result == 0
end

@testitem "Day3 gibberish almost mul" begin
    input = "mul(1,2"
    result = AOC2024.Day3.run(input)
    @test result == 0
end

@testitem "Day3 single mul" begin
    input = "mul(1,2)"
    result = AOC2024.Day3.run(input)
    @test result == 2
end

@testitem "Day3" begin
    input = "xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))"
    result = AOC2024.Day3.run(input)
    @test result == 161
end

