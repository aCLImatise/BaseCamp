version 1.0

task LofreqViterbi {
  input {
    Boolean fF
    Boolean kK
    Boolean qQ
    Boolean oO
    Boolean fF
    Boolean kK
    Boolean qQ
    Boolean oO
    String? inInBam
  }
  command <<<
    lofreq viterbi \
      ~{inInBam} \
      ~{true="-f" false="" fF} \
      ~{true="-k" false="" kK} \
      ~{true="-q" false="" qQ} \
      ~{true="-o" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{true="-k" false="" kK} \
      ~{true="-q" false="" qQ} \
      ~{true="-o" false="" oO}
  >>>
}