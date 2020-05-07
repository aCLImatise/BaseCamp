version 1.0

task ArbRepair {
  input {
    Boolean mM
    Boolean rR
    Boolean cC
  }
  command <<<
    arb_repair \
      ~{true="-m" false="" mM} \
      ~{true="-r" false="" rR} \
      ~{true="-c" false="" cC}
  >>>
}