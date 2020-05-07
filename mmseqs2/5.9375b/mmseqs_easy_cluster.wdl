version 1.0

task MmseqsEasyCluster {
  input {
    Boolean sS
    Boolean kK
    Boolean kKScore
    Boolean alphAlphSize
    Boolean offsetOffsetResult
    Boolean splitSplit
    Boolean splitSplitMode
    Boolean splitSplitMemoryLimit
    Boolean compCompBiasCorr
    Boolean diagDiagScore
    Boolean exactExactKmErMatching
    Boolean maskMask
    Boolean minMinUnGappedScore
    Boolean addAddSelfMatches
    Boolean spacedSpacedKmErMode
    Boolean cC
    Boolean covCovMode
    Boolean aA
    Boolean alignmentAlignmentMode
    Boolean eE
    Boolean minMinSeqId
    Boolean seqSeqIdMode
    Boolean altAltAli
    Boolean realignRealign
    Boolean maxMaxRejected
    Boolean maxMaxAccept
    Boolean scoreScoreBias
    Boolean clusterClusterMode
    Boolean maxMaxIterations
    Boolean similaritySimilarityType
    Boolean singleSingleStepClustering
    Boolean clusterClusterSteps
    Boolean kmKmErPerSeq
    Boolean hashHashShift
    Boolean includeIncludeOnlyExtendable
    Boolean skipSkipNRepeatKmEr
    Boolean pcPcA
    Boolean pcbPcb
    Boolean noNoPreload
    Boolean reReScoreMode
    Boolean subSubMat
    Boolean maxMaxSeqLen
    Boolean maxMaxSeqs
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs easy-cluster \
      ~{true="-s" false="" sS} \
      ~{true="-k" false="" kK} \
      ~{true="--k-score" false="" kKScore} \
      ~{true="--alph-size" false="" alphAlphSize} \
      ~{true="--offset-result" false="" offsetOffsetResult} \
      ~{true="--split" false="" splitSplit} \
      ~{true="--split-mode" false="" splitSplitMode} \
      ~{true="--split-memory-limit" false="" splitSplitMemoryLimit} \
      ~{true="--comp-bias-corr" false="" compCompBiasCorr} \
      ~{true="--diag-score" false="" diagDiagScore} \
      ~{true="--exact-kmer-matching" false="" exactExactKmErMatching} \
      ~{true="--mask" false="" maskMask} \
      ~{true="--min-ungapped-score" false="" minMinUnGappedScore} \
      ~{true="--add-self-matches" false="" addAddSelfMatches} \
      ~{true="--spaced-kmer-mode" false="" spacedSpacedKmErMode} \
      ~{true="-c" false="" cC} \
      ~{true="--cov-mode" false="" covCovMode} \
      ~{true="-a" false="" aA} \
      ~{true="--alignment-mode" false="" alignmentAlignmentMode} \
      ~{true="-e" false="" eE} \
      ~{true="--min-seq-id" false="" minMinSeqId} \
      ~{true="--seq-id-mode" false="" seqSeqIdMode} \
      ~{true="--alt-ali" false="" altAltAli} \
      ~{true="--realign" false="" realignRealign} \
      ~{true="--max-rejected" false="" maxMaxRejected} \
      ~{true="--max-accept" false="" maxMaxAccept} \
      ~{true="--score-bias" false="" scoreScoreBias} \
      ~{true="--cluster-mode" false="" clusterClusterMode} \
      ~{true="--max-iterations" false="" maxMaxIterations} \
      ~{true="--similarity-type" false="" similaritySimilarityType} \
      ~{true="--single-step-clustering" false="" singleSingleStepClustering} \
      ~{true="--cluster-steps" false="" clusterClusterSteps} \
      ~{true="--kmer-per-seq" false="" kmKmErPerSeq} \
      ~{true="--hash-shift" false="" hashHashShift} \
      ~{true="--include-only-extendable" false="" includeIncludeOnlyExtendable} \
      ~{true="--skip-n-repeat-kmer" false="" skipSkipNRepeatKmEr} \
      ~{true="--pca" false="" pcPcA} \
      ~{true="--pcb" false="" pcbPcb} \
      ~{true="--no-preload" false="" noNoPreload} \
      ~{true="--rescore-mode" false="" reReScoreMode} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--max-seq-len" false="" maxMaxSeqLen} \
      ~{true="--max-seqs" false="" maxMaxSeqs} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}