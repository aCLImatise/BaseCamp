version 1.0

task Blastcl3 {
  input {
    Boolean mM
    Boolean kK
    Boolean cC
  }
  command <<<
    blastcl3 \
      ~{true="-m" false="" mM} \
      ~{true="-K" false="" kK} \
      ~{true="-C" false="" cC}
  >>>
}