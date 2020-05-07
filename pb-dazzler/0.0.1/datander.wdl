version 1.0

task Datander {
  input {
    Boolean vV
    Boolean kK
    Boolean wW
    Boolean eE
    Boolean lL
    Boolean sS
    Boolean tT
    Boolean pP
  }
  command <<<
    datander \
      ~{true="-v" false="" vV} \
      ~{true="-k" false="" kK} \
      ~{true="-w" false="" wW} \
      ~{true="-e" false="" eE} \
      ~{true="-l" false="" lL} \
      ~{true="-s" false="" sS} \
      ~{true="-T" false="" tT} \
      ~{true="-P" false="" pP}
  >>>
}