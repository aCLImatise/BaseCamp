version 1.0

task BlPileupStats {
  input {
    Boolean iI
    Boolean oO
    Boolean mM
    String? pilePileUpStats
  }
  command <<<
    bl-pileup-stats \
      ~{pilePileUpStats} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-m" false="" mM}
  >>>
}