version 1.0

task MmseqsSwapdb {
  input {
    Boolean splitSplitMemoryLimit
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs swapdb \
      ~{true="--split-memory-limit" false="" splitSplitMemoryLimit} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}