version 1.0

task CapCpileup2binned {
  input {
    Boolean iI
    Boolean oO
    Boolean cC
    Boolean tT
    Boolean bB
    Boolean nN
  }
  command <<<
    capCpileup2binned \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-b" false="" bB} \
      ~{true="-n" false="" nN}
  >>>
}