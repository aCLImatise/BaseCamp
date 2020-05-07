version 1.0

task Gubbins {
  input {
    Boolean rR
    Boolean tT
    Boolean vV
    Boolean fF
    Boolean mM
    Boolean aA
    Boolean bB
    String? alignmentAlignmentFile
  }
  command <<<
    gubbins \
      ~{alignmentAlignmentFile} \
      ~{true="-r" false="" rR} \
      ~{true="-t" false="" tT} \
      ~{true="-v" false="" vV} \
      ~{true="-f" false="" fF} \
      ~{true="-m" false="" mM} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB}
  >>>
}