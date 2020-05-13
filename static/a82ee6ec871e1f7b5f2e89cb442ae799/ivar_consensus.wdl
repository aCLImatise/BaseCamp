version 1.0

task IvarConsensus {
  input {
    Boolean qQ
    Boolean tT
    Boolean mM
    Boolean kK
    Boolean nN
    Boolean pP
  }
  command <<<
    ivar consensus \
      ~{true="-q" false="" qQ} \
      ~{true="-t" false="" tT} \
      ~{true="-m" false="" mM} \
      ~{true="-k" false="" kK} \
      ~{true="-n" false="" nN} \
      ~{true="-p" false="" pP}
  >>>
}