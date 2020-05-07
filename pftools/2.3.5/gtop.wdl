version 1.0

task Gtop {
  input {
    Boolean aA
    Boolean sS
    Boolean lL
    Boolean gG
    Boolean eE
    Boolean fF
    Boolean oO
  }
  command <<<
    gtop \
      ~{true="-a" false="" aA} \
      ~{true="-s" false="" sS} \
      ~{true="-l" false="" lL} \
      ~{true="-G" false="" gG} \
      ~{true="-E" false="" eE} \
      ~{true="-F" false="" fF} \
      ~{true="-O" false="" oO}
  >>>
}