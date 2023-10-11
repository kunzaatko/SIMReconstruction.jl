using SIMReconstruction
using Test
using Aqua

@testset "SIMReconstruction.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(SIMReconstruction)
    end
    # Write your tests here.
end
