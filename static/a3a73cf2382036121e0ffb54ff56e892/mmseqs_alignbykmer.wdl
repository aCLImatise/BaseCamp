version 1.0

task MmseqsAlignbykmer {
  input {
    Boolean kK
    Boolean alphAlphSize
    Boolean addAddSelfMatches
    Boolean cC
    Boolean eE
    Boolean covCovMode
    Boolean minMinSeqId
    Boolean subSubMat
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs alignbykmer \
      ~{true="-k" false="" kK} \
      ~{true="--alph-size" false="" alphAlphSize} \
      ~{true="--add-self-matches" false="" addAddSelfMatches} \
      ~{true="-c" false="" cC} \
      ~{true="-e" false="" eE} \
      ~{true="--cov-mode" false="" covCovMode} \
      ~{true="--min-seq-id" false="" minMinSeqId} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}