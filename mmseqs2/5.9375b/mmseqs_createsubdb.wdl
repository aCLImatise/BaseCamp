version 1.0

task MmseqsCreatesubdb {
  input {
    Boolean vV
  }
  command <<<
    mmseqs createsubdb \
      ~{true="-v" false="" vV}
  >>>
}