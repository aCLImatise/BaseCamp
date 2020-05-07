version 1.0

task MmseqsRescorediagonal {
  input {
    Boolean addAddSelfMatches
    Boolean eE
    Boolean cC
    Boolean covCovMode
    Boolean minMinSeqId
    Boolean seqSeqIdMode
    Boolean reReScoreMode
    Boolean noNoPreload
    Boolean subSubMat
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs rescorediagonal \
      ~{true="--add-self-matches" false="" addAddSelfMatches} \
      ~{true="-e" false="" eE} \
      ~{true="-c" false="" cC} \
      ~{true="--cov-mode" false="" covCovMode} \
      ~{true="--min-seq-id" false="" minMinSeqId} \
      ~{true="--seq-id-mode" false="" seqSeqIdMode} \
      ~{true="--rescore-mode" false="" reReScoreMode} \
      ~{true="--no-preload" false="" noNoPreload} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}