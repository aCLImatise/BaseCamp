version 1.0

task HtsPolyATTrim {
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
    Boolean lL
    Boolean rR
    Boolean iI
    Boolean iI
    Boolean wW
    Boolean eE
    Boolean iI
    Boolean mM
    Boolean xX
  }
  command <<<
    hts_PolyATTrim \
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
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{true="-i" false="" iI} \
      ~{true="-i" false="" iI} \
      ~{true="-w" false="" wW} \
      ~{true="-e" false="" eE} \
      ~{true="-i" false="" iI} \
      ~{true="-M" false="" mM} \
      ~{true="-x" false="" xX}
  >>>
}