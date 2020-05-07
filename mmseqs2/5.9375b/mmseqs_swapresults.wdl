version 1.0

task MmseqsSwapresults {
  input {
    Boolean splitSplitMemoryLimit
    Boolean eE
    Boolean subSubMat
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs swapresults \
      ~{true="--split-memory-limit" false="" splitSplitMemoryLimit} \
      ~{true="-e" false="" eE} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}