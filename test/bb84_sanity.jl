@testset "BB84 sanity checks" begin

    rng = MersenneTwister(42)

    @testset "Ideal channel" begin
        source = IdealSource()
        channel = IdealQuantumChannel()

        state = prepare(source, One, XBasis, rng)
        transmitted = transmit(state, channel, rng)

        @test transmitted == state
    end

    @testset "Ideal detector" begin
        source = IdealSource()
        detector = IdealDetector()

        state = prepare(source, One, XBasis, rng)
        result = measure(state, XBasis, detector, rng)

        @test result.detected
        @test result.bit == One
    end

    @testset "Ideal detector - incompatible basis" begin
        source = IdealSource()
        detector = IdealDetector()

        state = prepare(source, Zero, ZBasis, rng)

        results = [
            measure(state, XBasis, detector, rng).bit
            for _ in 1:10_000
        ]

        zeros = count(==(Zero), results)
        ones = count(==(One), results)

        @test zeros > 4_000
        @test ones > 4_000
        @test zeros < 6_000
        @test ones < 6_000
    end
end