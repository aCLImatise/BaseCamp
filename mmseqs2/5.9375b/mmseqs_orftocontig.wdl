version 1.0

task MmseqsOrftocontig {
  input {
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs orftocontig \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}