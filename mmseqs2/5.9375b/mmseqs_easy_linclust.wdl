version 1.0

task MmseqsEasyLinclust {
  input {
    Boolean compCompBiasCorr
    Boolean addAddSelfMatches
    Boolean alphAlphSize
    Boolean maskMask
    Boolean kK
    Boolean splitSplitMemoryLimit
    Boolean aA
    Boolean alignmentAlignmentMode
    Boolean eE
    Boolean minMinSeqId
    Boolean seqSeqIdMode
    Boolean altAltAli
    Boolean cC
    Boolean covCovMode
    Boolean realignRealign
    Boolean maxMaxRejected
    Boolean maxMaxAccept
    Boolean scoreScoreBias
    Boolean clusterClusterMode
    Boolean maxMaxIterations
    Boolean similaritySimilarityType
    Boolean kmKmErPerSeq
    Boolean hashHashShift
    Boolean includeIncludeOnlyExtendable
    Boolean skipSkipNRepeatKmEr
    Boolean pcPcA
    Boolean pcbPcb
    Boolean noNoPreload
    Boolean reReScoreMode
    Boolean threadsThreads
    Boolean vV
    Boolean subSubMat
    Boolean maxMaxSeqLen
    Boolean maxMaxSeqs
  }
  command <<<
    mmseqs easy-linclust \
      ~{true="--comp-bias-corr" false="" compCompBiasCorr} \
      ~{true="--add-self-matches" false="" addAddSelfMatches} \
      ~{true="--alph-size" false="" alphAlphSize} \
      ~{true="--mask" false="" maskMask} \
      ~{true="-k" false="" kK} \
      ~{true="--split-memory-limit" false="" splitSplitMemoryLimit} \
      ~{true="-a" false="" aA} \
      ~{true="--alignment-mode" false="" alignmentAlignmentMode} \
      ~{true="-e" false="" eE} \
      ~{true="--min-seq-id" false="" minMinSeqId} \
      ~{true="--seq-id-mode" false="" seqSeqIdMode} \
      ~{true="--alt-ali" false="" altAltAli} \
      ~{true="-c" false="" cC} \
      ~{true="--cov-mode" false="" covCovMode} \
      ~{true="--realign" false="" realignRealign} \
      ~{true="--max-rejected" false="" maxMaxRejected} \
      ~{true="--max-accept" false="" maxMaxAccept} \
      ~{true="--score-bias" false="" scoreScoreBias} \
      ~{true="--cluster-mode" false="" clusterClusterMode} \
      ~{true="--max-iterations" false="" maxMaxIterations} \
      ~{true="--similarity-type" false="" similaritySimilarityType} \
      ~{true="--kmer-per-seq" false="" kmKmErPerSeq} \
      ~{true="--hash-shift" false="" hashHashShift} \
      ~{true="--include-only-extendable" false="" includeIncludeOnlyExtendable} \
      ~{true="--skip-n-repeat-kmer" false="" skipSkipNRepeatKmEr} \
      ~{true="--pca" false="" pcPcA} \
      ~{true="--pcb" false="" pcbPcb} \
      ~{true="--no-preload" false="" noNoPreload} \
      ~{true="--rescore-mode" false="" reReScoreMode} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--max-seq-len" false="" maxMaxSeqLen} \
      ~{true="--max-seqs" false="" maxMaxSeqs}
  >>>
}