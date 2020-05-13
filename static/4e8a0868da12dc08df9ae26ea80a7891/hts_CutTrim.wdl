version 1.0

task HtsCutTrim {
  input {
    Boolean vV
    Boolean nN
    Boolean lL
    Boolean aA
    Boolean uU
    Boolean tT
    Boolean iI
    Boolean sS
    Boolean fF
    Boolean uU
    Boolean fF
    Boolean iI
    Boolean tT
    Boolean zZ
    Boolean pP
    Boolean gG
    Boolean oO
    Boolean nN
    Boolean sS
    Boolean mM
    Boolean aA
    Boolean bB
    Boolean cC
    Boolean dD
    Boolean mM
  }
  command <<<
    hts_CutTrim \
      ~{true="-v" false="" vV} \
      ~{true="-N" false="" nN} \
      ~{true="-L" false="" lL} \
      ~{true="-A" false="" aA} \
      ~{true="-U" false="" uU} \
      ~{true="-T" false="" tT} \
      ~{true="-I" false="" iI} \
      ~{true="-S" false="" sS} \
      ~{true="-F" false="" fF} \
      ~{true="-u" false="" uU} \
      ~{true="-f" false="" fF} \
      ~{true="-i" false="" iI} \
      ~{true="-t" false="" tT} \
      ~{true="-z" false="" zZ} \
      ~{true="-p" false="" pP} \
      ~{true="-g" false="" gG} \
      ~{true="-O" false="" oO} \
      ~{true="-n" false="" nN} \
      ~{true="-s" false="" sS} \
      ~{true="-m" false="" mM} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-M" false="" mM}
  >>>
}