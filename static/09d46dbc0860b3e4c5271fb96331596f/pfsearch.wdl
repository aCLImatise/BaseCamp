version 1.0

task Pfsearch {
  input {
    Boolean aA
    Boolean bB
    Boolean fF
    Boolean lL
    Boolean lL
    Boolean mM
    Boolean rR
    Boolean uU
    Boolean cC
    Boolean mM
    Boolean dD
    Boolean kK
    Boolean jJ
    Boolean sS
    Boolean vV
    Boolean xX
    Boolean yY
    Boolean zZ
    Boolean wW
  }
  command <<<
    pfsearch \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-f" false="" fF} \
      ~{true="-l" false="" lL} \
      ~{true="-L" false="" lL} \
      ~{true="-m" false="" mM} \
      ~{true="-r" false="" rR} \
      ~{true="-u" false="" uU} \
      ~{true="-C" false="" cC} \
      ~{true="-M" false="" mM} \
      ~{true="-d" false="" dD} \
      ~{true="-k" false="" kK} \
      ~{true="-j" false="" jJ} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV} \
      ~{true="-x" false="" xX} \
      ~{true="-y" false="" yY} \
      ~{true="-z" false="" zZ} \
      ~{true="-W" false="" wW}
  >>>
}