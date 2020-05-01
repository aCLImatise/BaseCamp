version 1.0

task MedakaVariant {
  input {
    Boolean iI
    Boolean fF
    Boolean rR
    Boolean oO
    Boolean sS
    Boolean mM
    Boolean tT
    Boolean pP
    Boolean bB
    Boolean dD
    Boolean nN
    Boolean pP
    Boolean uU
    Boolean sS
  }
  command <<<
    medaka_variant \
      ~{true="-i" false="" iI} \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS} \
      ~{true="-m" false="" mM} \
      ~{true="-t" false="" tT} \
      ~{true="-p" false="" pP} \
      ~{true="-b" false="" bB} \
      ~{true="-d" false="" dD} \
      ~{true="-N" false="" nN} \
      ~{true="-P" false="" pP} \
      ~{true="-U" false="" uU} \
      ~{true="-S" false="" sS}
  >>>
}