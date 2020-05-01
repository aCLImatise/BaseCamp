version 1.0

task LAshow {
  input {
    Boolean cC
    Boolean aA
    Boolean rR
    Boolean oO
    Boolean fF
    Boolean uU
    Boolean iI
    Boolean wW
    Boolean bB
  }
  command <<<
    LAshow \
      ~{true="-c" false="" cC} \
      ~{true="-a" false="" aA} \
      ~{true="-r" false="" rR} \
      ~{true="-o" false="" oO} \
      ~{true="-F" false="" fF} \
      ~{true="-U" false="" uU} \
      ~{true="-i" false="" iI} \
      ~{true="-w" false="" wW} \
      ~{true="-b" false="" bB}
  >>>
}