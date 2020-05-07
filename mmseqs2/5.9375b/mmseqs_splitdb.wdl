version 1.0

task MmseqsSplitdb {
  input {
    Boolean splitSplit
    Boolean vV
  }
  command <<<
    mmseqs splitdb \
      ~{true="--split" false="" splitSplit} \
      ~{true="-v" false="" vV}
  >>>
}