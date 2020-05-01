version 1.0

task KinGenMacrostates {
  input {
    Boolean eE
    Boolean mM
    Boolean tT
    Boolean lL
    Boolean rR
    Boolean aA
    Boolean cC
    Boolean tT
    Boolean cC
    Boolean oO
    Boolean fF
    String? kinKinSim
    String? argsArgs
    String? sequenceSequenceFastA
  }
  command <<<
    kinGenMacrostates \
      ~{kinKinSim} \
      ~{true="-E" false="" eE} \
      ~{true="-m" false="" mM} \
      ~{true="-T" false="" tT} \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-C" false="" cC} \
      ~{true="-O" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{argsArgs} \
      ~{sequenceSequenceFastA}
  >>>
}