using GridOptimizationChallenge
using PowerModelsSecurityConstrainedUtils
using Test


case = parse_directory("Network_02R-173/scenario_1/")

@testset "grid-optimization-challenge" begin
    @test case == grid_optimization_challenge("scenario_1", "Network_02R-173")
end
