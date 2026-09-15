module BB84ChannelSim

include("core/types.jl")
include("core/interfaces.jl")

export Basis, ZBasis, XBasis
export BitValue, Zero, One
export BB84State
export AbstractQuantumChannel
export transmit

end