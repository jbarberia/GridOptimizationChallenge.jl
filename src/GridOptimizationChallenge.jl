module GridOptimizationChallenge

using PowerModelsSecurityConstrainedUtils
using Artifacts

const GOC = joinpath(artifact"GridOptimizationChallenge","GridOptimizationChallengeCases-1.0")

"""
    grid_optimization_challenge(fname::AbstractString, path::AbstractString)

    open a scenario for the Grid Optimization Challenge for the real time cases.
"""
function grid_optimization_challenge(scenario::AbstractString, network::AbstractString)
    _grid_optimization_challenge(scenario::AbstractString, network::AbstractString)
end

function _grid_optimization_challenge(scenario::AbstractString, network::AbstractString)
    if isdir(joinpath(GOC, network, scenario))
        case = parse_directory(joinpath(GOC, network, scenario))
    else
        error("scenario not found")
    end
end

export grid_optimization_challenge

end # module GridOptimizationChallenge
