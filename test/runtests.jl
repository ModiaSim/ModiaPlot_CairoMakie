module Runtests

import ModiaResult
using  Test

ModiaResult.activate("CairoMakie")

include("$(ModiaResult.path)/test/runtests_withPlot.jl")

@testset "test saving of svg file" begin
    include("test_45_Save_svg_figure.jl")
end

ModiaResult.activatePrevious()

end