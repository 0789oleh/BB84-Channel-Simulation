struct IdealDetector <: AbstractDetector
end

function measure(
    state::BB84State,
    basis::Basis,
    detector::IdealDetector,
    rng
)
    if basis == state.basis
        return MeasurementResult(true, state.bit)
    else
        bit = rand(rng, (Zero, One))
        return MeasurementResult(true, bit)
    end
end