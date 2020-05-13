version 1.0

task DellyMerge {
  input {
    Boolean oO
    Boolean uU
    Boolean aA
    Boolean vV
    Boolean mM
    Boolean nN
    Boolean cC
    Boolean pP
    Boolean bB
    Boolean rR
  }
  command <<<
    delly merge \
      ~{true="-o" false="" oO} \
      ~{true="-u" false="" uU} \
      ~{true="-a" false="" aA} \
      ~{true="-v" false="" vV} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-c" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{true="-b" false="" bB} \
      ~{true="-r" false="" rR}
  >>>
}