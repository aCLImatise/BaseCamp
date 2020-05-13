version 1.0

task GapCloser {
  input {
    Boolean aA
    Boolean bB
    Boolean oO
    Boolean lL
    Boolean pP
    Boolean tT
  }
  command <<<
    GapCloser \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-o" false="" oO} \
      ~{true="-l" false="" lL} \
      ~{true="-p" false="" pP} \
      ~{true="-t" false="" tT}
  >>>
}