version 1.0

task SignalGenerator.sh {
  input {
    Boolean sS
    Boolean gG
    Boolean oO
    Boolean cC
    Boolean rR
    Boolean bB
    Boolean fF
    Boolean pP
    Boolean tT
    Boolean nN
  }
  command <<<
    SignalGenerator.sh \
      ~{true="-s" false="" sS} \
      ~{true="-g" false="" gG} \
      ~{true="-o" false="" oO} \
      ~{true="-c" false="" cC} \
      ~{true="-r" false="" rR} \
      ~{true="-b" false="" bB} \
      ~{true="-f" false="" fF} \
      ~{true="-p" false="" pP} \
      ~{true="-t" false="" tT} \
      ~{true="-n" false="" nN}
  >>>
}