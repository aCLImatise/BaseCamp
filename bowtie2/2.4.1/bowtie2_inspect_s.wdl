version 1.0

task Bowtie2InspectS {
  input {
    Boolean aA
    Boolean nN
    Boolean sS
    Boolean vV
  }
  command <<<
    bowtie2-inspect-s \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV}
  >>>
}