struct IdealSource <: AbstractSource end

function prepare(
    source::IdealSource,
    bit::BitValue,
    basis::Basis,
    rng
)
    return BB84State(bit, basis)
end