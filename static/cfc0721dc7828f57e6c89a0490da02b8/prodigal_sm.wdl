version 1.0

task ProdigalSm {
  input {
    Boolean aA
    Boolean cC
    Boolean dD
    Boolean fF
    Boolean gG
    Boolean iI
    Boolean mM
    Boolean nN
    Boolean oO
    Boolean pP
    Boolean qQ
    Boolean sS
    Boolean tT
    Boolean vV
  }
  command <<<
    prodigal_sm \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{true="-g" false="" gG} \
      ~{true="-i" false="" iI} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT} \
      ~{true="-v" false="" vV}
  >>>
}