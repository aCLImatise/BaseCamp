version 1.0

task MmseqsApply {
  input {
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs apply \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}