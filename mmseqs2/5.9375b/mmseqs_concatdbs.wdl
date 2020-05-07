version 1.0

task MmseqsConcatdbs {
  input {
    Boolean preservePreserveKeys
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs concatdbs \
      ~{true="--preserve-keys" false="" preservePreserveKeys} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}