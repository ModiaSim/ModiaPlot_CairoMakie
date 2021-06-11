module Runtests

import ModiaResult
using  Test

ModiaResult.activate("CairoMakie")

include("$(ModiaResult.path)/test_plot/all_tests.jl")

@testset "test saving of svg file" begin
    include("test_45_Save_svg_figure.jl")
end

ModiaResult.activatePreviousPlotPackage()

end