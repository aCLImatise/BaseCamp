version 1.0

task Daligner {
  input {
    Boolean wW
    Boolean tT
    Boolean mM
    Boolean eE
    Boolean lL
    Boolean sS
    Boolean bB
    Boolean hH
    Boolean tT
    Boolean pP
    Boolean mM
    Boolean vV
    Boolean aA
    Boolean aA
    Boolean iI
  }
  command <<<
    daligner \
      ~{true="-w" false="" wW} \
      ~{true="-t" false="" tT} \
      ~{true="-M" false="" mM} \
      ~{true="-e" false="" eE} \
      ~{true="-l" false="" lL} \
      ~{true="-s" false="" sS} \
      ~{true="-B" false="" bB} \
      ~{true="-H" false="" hH} \
      ~{true="-T" false="" tT} \
      ~{true="-P" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="-v" false="" vV} \
      ~{true="-a" false="" aA} \
      ~{true="-A" false="" aA} \
      ~{true="-I" false="" iI}
  >>>
}