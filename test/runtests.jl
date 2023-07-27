using GridOptimizationChallenge
using PowerModelsSecurityConstrainedUtils
using Test


case = parse_directory("Network_02R-173/scenario_1/")

@testset "grid-optimization-challenge" begin
    @test case == grid_optimization_challenge("Network_02R-173", "scenario_1")
end

@testset "errors-and-exceptions" begin
    @test_throws "Network not found" grid_optimization_challenge("Invalid Network", "")
    @test_throws "Scenario not found" grid_optimization_challenge("Network_02R-173", "Invalid Scenario")    
end

@testset "find-files" begin
    @test length(find_network("Network")) == 18
end

