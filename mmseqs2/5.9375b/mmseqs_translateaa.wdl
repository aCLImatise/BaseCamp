version 1.0

task MmseqsTranslateaa {
  input {
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs translateaa \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}