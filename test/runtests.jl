using Test
using BB84ChannelSim

@testset "BB84ChannelSim" begin

    @testset "BB84State" begin
        state = BB84State(Zero, ZBasis)

        @test state.bit == Zero
        @test state.basis == ZBasis
    end

end

@testset "Basis" begin
    @test ZBasis isa Basis
    @test XBasis isa Basis
end

@testset "BitValue" begin
    @test Zero isa BitValue
    @test One isa BitValue
end