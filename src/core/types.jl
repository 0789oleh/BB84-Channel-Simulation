@enum Basis ZBasis XBasis

@enum BitValue Zero One

struct BB84State
    bit::BitValue
    basis::Basis
end

abstract type AbstractQuantumChannel end
abstract type AbstractDetector end
abstract type AbstractSource end

struct MeasurementResult
    detected::Bool
    bit::Union{BitValue, Nothing}
end