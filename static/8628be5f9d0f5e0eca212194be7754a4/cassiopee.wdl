version 1.0

task Cassiopee {
  input {
    Boolean lL
    Boolean uU
    Boolean sS
    Boolean pP
    Boolean fF
    Boolean oO
    Boolean rR
    Boolean mM
    Boolean aA
    Boolean nN
    Boolean eE
    Boolean iI
    Boolean gG
    Boolean dD
    Boolean tT
    Boolean xX
    Boolean yY
    Boolean vV
  }
  command <<<
    cassiopee \
      ~{true="-l" false="" lL} \
      ~{true="-u" false="" uU} \
      ~{true="-s" false="" sS} \
      ~{true="-p" false="" pP} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{true="-m" false="" mM} \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-e" false="" eE} \
      ~{true="-i" false="" iI} \
      ~{true="-g" false="" gG} \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="-x" false="" xX} \
      ~{true="-y" false="" yY} \
      ~{true="-v" false="" vV}
  >>>
}