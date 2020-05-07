version 1.0

task LAmerge {
  input {
    Boolean vV
    Boolean aA
    Boolean pP
  }
  command <<<
    LAmerge \
      ~{true="-v" false="" vV} \
      ~{true="-a" false="" aA} \
      ~{true="-P" false="" pP}
  >>>
}