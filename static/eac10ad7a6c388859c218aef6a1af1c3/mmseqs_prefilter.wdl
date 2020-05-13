version 1.0

task MmseqsPrefilter {
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
    Boolean pcPcA
    Boolean pcbPcb
    Boolean noNoPreload
    Boolean subSubMat
    Boolean maxMaxSeqLen
    Boolean maxMaxSeqs
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs prefilter \
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
      ~{true="--pca" false="" pcPcA} \
      ~{true="--pcb" false="" pcbPcb} \
      ~{true="--no-preload" false="" noNoPreload} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--max-seq-len" false="" maxMaxSeqLen} \
      ~{true="--max-seqs" false="" maxMaxSeqs} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}