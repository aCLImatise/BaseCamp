version 1.0

task HtsSuperDeduper {
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
    Boolean sS
    Boolean lL
    Boolean qQ
    Boolean aA
    Boolean eE
  }
  command <<<
    hts_SuperDeduper \
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
      ~{true="-s" false="" sS} \
      ~{true="-l" false="" lL} \
      ~{true="-q" false="" qQ} \
      ~{true="-a" false="" aA} \
      ~{true="-e" false="" eE}
  >>>
}