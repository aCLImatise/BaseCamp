version 1.0

task FastqAnonymous {
  input {
    Boolean vV
    Boolean mM
  }
  command <<<
    fastq-anonymous \
      ~{true="-v" false="" vV} \
      ~{true="-m" false="" mM}
  >>>
}