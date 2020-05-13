version 1.0

task Arb2Bin {
  input {
    Boolean mM
    Boolean rR
    Boolean cC
  }
  command <<<
    arb_2_bin \
      ~{true="-m" false="" mM} \
      ~{true="-r" false="" rR} \
      ~{true="-c" false="" cC}
  >>>
}