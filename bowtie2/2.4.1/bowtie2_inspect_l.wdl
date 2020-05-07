version 1.0

task Bowtie2InspectL {
  input {
    Boolean aA
    Boolean nN
    Boolean sS
    Boolean vV
  }
  command <<<
    bowtie2-inspect-l \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV}
  >>>
}