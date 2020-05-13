version 1.0

task MmseqsKmermatcher {
  input {
    Boolean alphAlphSize
    Boolean maskMask
    Boolean kK
    Boolean splitSplitMemoryLimit
    Boolean minMinSeqId
    Boolean covCovMode
    Boolean cC
    Boolean kmKmErPerSeq
    Boolean hashHashShift
    Boolean includeIncludeOnlyExtendable
    Boolean skipSkipNRepeatKmEr
    Boolean subSubMat
    Boolean maxMaxSeqLen
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs kmermatcher \
      ~{true="--alph-size" false="" alphAlphSize} \
      ~{true="--mask" false="" maskMask} \
      ~{true="-k" false="" kK} \
      ~{true="--split-memory-limit" false="" splitSplitMemoryLimit} \
      ~{true="--min-seq-id" false="" minMinSeqId} \
      ~{true="--cov-mode" false="" covCovMode} \
      ~{true="-c" false="" cC} \
      ~{true="--kmer-per-seq" false="" kmKmErPerSeq} \
      ~{true="--hash-shift" false="" hashHashShift} \
      ~{true="--include-only-extendable" false="" includeIncludeOnlyExtendable} \
      ~{true="--skip-n-repeat-kmer" false="" skipSkipNRepeatKmEr} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--max-seq-len" false="" maxMaxSeqLen} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}