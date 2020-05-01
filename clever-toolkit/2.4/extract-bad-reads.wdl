version 1.0

task ExtractBadReads {
  input {
    Boolean aA
    Boolean uU
    Boolean sS
    Boolean tT
    Boolean mM
    Boolean mM
    Boolean qQ
    Boolean eE
    Boolean sS
    Boolean lL
    Boolean rR
    Boolean dD
    Boolean hH
  }
  command <<<
    extract-bad-reads \
      ~{true="-a" false="" aA} \
      ~{true="-u" false="" uU} \
      ~{true="-s" false="" sS} \
      ~{true="-T" false="" tT} \
      ~{true="-m" false="" mM} \
      ~{true="-M" false="" mM} \
      ~{true="-Q" false="" qQ} \
      ~{true="-e" false="" eE} \
      ~{true="-S" false="" sS} \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{true="-D" false="" dD} \
      ~{true="-H" false="" hH}
  >>>
}