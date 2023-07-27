# GridOptimizationChallenge.jl

This module serves as an interface to access the electrical network scenarios of the [GridOptimizationChallengeCases](https://github.com/jbarberia/GridOptimizationChallengeCases).

# Usage
## Get scenario
To read a network scenario the `grid_optimization_challenge` function returns the PowerModels data dictionary of it.

```julia
case = grid_optimization_challenge("Network_02R-173", "scenario_1")
```

## Find scenario/network
The functions `find_network` and `find_scenario` returns arrays with the name of the possible networks and scenarios:
```julia
find_network("Network")

[
    "Network_02R-173",
    "Network_03R-200",
    "Network_06R-124",
    "Network_08R-373",
    "Network_09R-195",
    "Network_12R-050",
    "Network_13R-103",
    "Network_14R-050",
    "Network_20R-100",
    "Network_25R-060",
    "Network_30R-048",
    "Network_70R-422",
    "Network_75R-040",
    "Network_82R-010",
    "Network_82R-040",
    "Network_83R-130",
    "Network_86R-040",
    "Network_88R-030",
]
```

```julia
find_scenario("scenario", "Network_02R-173")

[
    "scenario_1",
    "scenario_123",
    "scenario_128",
    "scenario_131",
    "scenario_135",
    "scenario_136",
    "scenario_140",
    "scenario_15",
    "scenario_156",
    "scenario_159",
    "scenario_165",
    "scenario_167",
    "scenario_169",
    "scenario_33",
    "scenario_5",
    "scenario_65",
    "scenario_67",
    "scenario_72",
    "scenario_75",
    "scenario_9",
]
```
