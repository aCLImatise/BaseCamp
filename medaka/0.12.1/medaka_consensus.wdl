version 1.0

task MedakaConsensus {
  input {
    Boolean iI
    Boolean dD
    Boolean oO
    Boolean vV
    Boolean mM
    Boolean fF
    Boolean tT
    Boolean bB
  }
  command <<<
    medaka_consensus \
      ~{true="-i" false="" iI} \
      ~{true="-d" false="" dD} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{true="-m" false="" mM} \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT} \
      ~{true="-b" false="" bB}
  >>>
}