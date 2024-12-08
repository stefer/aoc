using AOC2024
using TestItems

@testitem "Day4 simple" begin
    input = """
        XMAS
        M...
        A...
        S..."""
    result = AOC2024.Day4.run(input)
    @test result == 2
end

@testitem "Day4 all directions" begin
    input = """
    S..S..S
    .A.A.A.
    ..MMM..
    SAMXMAS
    ..MMM..
    .A.A.A.
    S..S..S"""
    result = AOC2024.Day4.run(input)
    @test result == 8
end

@testitem "Day4 dot" begin
    input = """
        ....XXMAS.
        .SAMXMS...
        ...S..A...
        ..A.A.MS.X
        XMASAMX.MM
        X.....XA.A
        S.S.S.S.SS
        .A.A.A.A.A
        ..M.M.M.MM
        .X.X.XMASX"""
    result = AOC2024.Day4.run(input)
    @test result == 18
end

@testitem "Day4" begin
    input = """
        MMMSXXMASM
        MSAMXMSMSA
        AMXSXMAAMM
        MSAMASMSMX
        XMASAMXAMM
        XXAMMXXAMA
        SMSMSASXSS
        SAXAMASAAA
        MAMMMXMMMM
        MXMXAXMASX"""
    result = AOC2024.Day4.run(input)
    @test result == 18
end