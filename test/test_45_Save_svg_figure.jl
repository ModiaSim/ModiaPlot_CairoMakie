module test_45_Save_svg_figure

import ModiaResult
ModiaResult.@usingModiaPlot

# Test the Figure operations
println("\n... test test_45_Save_svg_figure.jl:\n")

t = range(0.0, stop=10.0, length=100)
result = Dict{String,Any}("time" => t, "phi" => sin.(t))
ModiaResult.printResultInfo(result)

plot(result, "phi", figure=2)
saveFigure(2, "test_saveFigure.svg")

end