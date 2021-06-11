module test_12_ResultDictWithMatrixOfPlotsc

import ModiaResult
include("$(ModiaResult.path)/test/test_72_ResultDictWithMatrixOfPlotsb.jl")

ModiaResult.@usingModiaPlot

plot(result, [("sigA", "sigB", "sigC"), "r[2:3]"])
saveFigure(1, "segmented-signals-plot.svg")

end