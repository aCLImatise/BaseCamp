version 1.0

task MmseqsClusthash {
  input {
    Boolean alphAlphSize
    Boolean minMinSeqId
    Boolean subSubMat
    Boolean maxMaxSeqLen
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs clusthash \
      ~{true="--alph-size" false="" alphAlphSize} \
      ~{true="--min-seq-id" false="" minMinSeqId} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--max-seq-len" false="" maxMaxSeqLen} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}