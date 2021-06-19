module Runtests

import ModiaResult
using  Test

@testset "Test ModiaPlot_CairoMakie/test" begin
    ModiaResult.usePlotPackage("CairoMakie")
    include("$(ModiaResult.path)/test/runtests_withPlot.jl")
    include("test_45_Save_svg_figure.jl")    
    ModiaResult.usePreviousPlotPackage()
end

end