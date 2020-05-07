version 1.0

task DBsplit {
  input {
    Boolean sS
    Boolean xX
    Boolean aA
    Boolean fF
  }
  command <<<
    DBsplit \
      ~{true="-s" false="" sS} \
      ~{true="-x" false="" xX} \
      ~{true="-a" false="" aA} \
      ~{true="-f" false="" fF}
  >>>
}