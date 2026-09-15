prepare(source::AbstractSource, bit::BitValue, basis::Basis, rng) =
    throw(MethodError(prepare, (source, bit, basis, rng)))

transmit(
    state::BB84State,
    channel::AbstractQuantumChannel,
    rng
) = throw(MethodError(transmit, (state, channel, rng)))

measure(
    state::BB84State,
    basis::Basis,
    detector::AbstractDetector,
    rng
) = throw(MethodError(measure, (state, basis, detector, rng)))