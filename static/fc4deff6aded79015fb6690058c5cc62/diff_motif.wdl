version 1.0

task DiffMotif {
  input {
    Boolean oO
    Boolean mM
    Boolean fF
    String? motif1Motif1
    String? motif2Motif2
  }
  command <<<
    diff_motif \
      ~{motif1Motif1} \
      ~{true="-o" false="" oO} \
      ~{true="-m" false="" mM} \
      ~{true="-f" false="" fF} \
      ~{motif2Motif2}
  >>>
}