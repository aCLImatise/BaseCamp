version 1.0

task Pout2mzid {
  input {
    Boolean pP
    Boolean mM
    Boolean iI
    Boolean cC
    Boolean oO
    Boolean fF
    Boolean dD
    Boolean vV
    Boolean wW
  }
  command <<<
    pout2mzid \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="-i" false="" iI} \
      ~{true="-c" false="" cC} \
      ~{true="-o" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{true="-d" false="" dD} \
      ~{true="-v" false="" vV} \
      ~{true="-w" false="" wW}
  >>>
}