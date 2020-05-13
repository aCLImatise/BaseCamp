version 1.0

task FingerPRINTScan {
  input {
    Boolean aA
    Boolean cC
    Boolean cC
    Boolean dD
    Boolean eE
    Boolean eE
    Boolean fF
    Boolean fF
    Boolean gG
    Boolean mM
    Boolean mM
    Boolean nN
    Boolean oO
    Boolean rR
    Boolean sS
    Boolean tT
    Boolean wW
    Boolean xX
  }
  command <<<
    fingerPRINTScan \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-e" false="" eE} \
      ~{true="-E" false="" eE} \
      ~{true="-f" false="" fF} \
      ~{true="-F" false="" fF} \
      ~{true="-G" false="" gG} \
      ~{true="-m" false="" mM} \
      ~{true="-M" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-o" false="" oO} \
      ~{true="-R" false="" rR} \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT} \
      ~{true="-w" false="" wW} \
      ~{true="-x" false="" xX}
  >>>
}