module BB84ChannelSim

include("core/types.jl")
include("core/interfaces.jl")

include("sources/ideal_source.jl")
include("channels/ideal_channel.jl")
include("detectors/ideal_detector.jl")

export Basis, ZBasis, XBasis
export BitValue, Zero, One
export BB84State
export MeasurementResult

export AbstractSource
export AbstractQuantumChannel
export AbstractDetector

export IdealSource
export IdealQuantumChannel
export IdealDetector

export prepare
export transmit
export measure

end