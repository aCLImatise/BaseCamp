version 1.0

task Spindex {
  input {
    Boolean vV
    Boolean kK
    Boolean dD
    Boolean pP
  }
  command <<<
    spindex \
      ~{true="-v" false="" vV} \
      ~{true="-k" false="" kK} \
      ~{true="-d" false="" dD} \
      ~{true="-p" false="" pP}
  >>>
}