using AOC2024
using TestItems

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
