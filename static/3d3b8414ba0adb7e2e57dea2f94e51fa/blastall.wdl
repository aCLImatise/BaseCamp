version 1.0

task Blastall {
  input {
    Boolean mM
    Boolean kK
    Boolean cC
  }
  command <<<
    blastall \
      ~{true="-m" false="" mM} \
      ~{true="-K" false="" kK} \
      ~{true="-C" false="" cC}
  >>>
}