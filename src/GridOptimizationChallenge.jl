module GridOptimizationChallenge

using PowerModelsSecurityConstrainedUtils
using Artifacts

const GOC = joinpath(artifact"GridOptimizationChallenge","GridOptimizationChallengeCases-1.0")

"""
    grid_optimization_challenge(network::AbstractString, scenario::AbstractString)

    open a scenario for the Grid Optimization Challenge for the real time cases.
"""
function grid_optimization_challenge(network::AbstractString, scenario::AbstractString)
    _grid_optimization_challenge(network::AbstractString, scenario::AbstractString)
end

function _grid_optimization_challenge(network::AbstractString, scenario::AbstractString)
    if isdir(joinpath(GOC, network, scenario))
        case = parse_directory(joinpath(GOC, network, scenario))
    elseif !isdir(joinpath(GOC, network))
        error("Network not found")
    elseif !isdir(joinpath(GOC, network, scenario))
        error("Scenario not found")
    else
        error("Invalid network and scenario")
    end
end

function find_network(network_name::AbstractString)
    network_folders = readdir(GOC)
    filter!(x -> isdir(joinpath(GOC, x)), network_folders)
    filtered_networks = filter(x -> occursin(network_name, x), network_folders)

    return filtered_networks
end

export grid_optimization_challenge, find_network

end # module GridOptimizationChallenge
