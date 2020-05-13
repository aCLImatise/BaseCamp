version 1.0

task MmseqsSummarizeresult {
  input {
    Boolean aA
    Boolean eE
    Boolean cC
    Boolean overlapOverlap
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs summarizeresult \
      ~{true="-a" false="" aA} \
      ~{true="-e" false="" eE} \
      ~{true="-c" false="" cC} \
      ~{true="--overlap" false="" overlapOverlap} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}