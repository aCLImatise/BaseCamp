version 1.0

task LofreqUniq {
  input {
    Boolean vV
    Boolean oO
    Boolean fF
    Boolean tT
    Boolean mM
    Boolean aA
    Boolean nN
    String? indexedIndexedInBam
  }
  command <<<
    lofreq uniq \
      ~{indexedIndexedInBam} \
      ~{true="-v" false="" vV} \
      ~{true="-o" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT} \
      ~{true="-m" false="" mM} \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN}
  >>>
}