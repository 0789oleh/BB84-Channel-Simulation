struct IdealQuantumChannel <: AbstractQuantumChannel end

function transmit(
    state::BB84State,
    channel::IdealQuantumChannel,
    rng
)
    return state
end