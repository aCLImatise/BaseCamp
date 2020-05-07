version 1.0

task MmseqsTaxonomy {
  input {
    Boolean compCompBiasCorr
    Boolean addAddSelfMatches
    Boolean sS
    Boolean kK
    Boolean kKScore
    Boolean alphAlphSize
    Boolean offsetOffsetResult
    Boolean splitSplit
    Boolean splitSplitMode
    Boolean splitSplitMemoryLimit
    Boolean diagDiagScore
    Boolean exactExactKmErMatching
    Boolean maskMask
    Boolean minMinUnGappedScore
    Boolean spacedSpacedKmErMode
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
    Boolean pcPcA
    Boolean pcbPcb
    Boolean maskMaskProfile
    Boolean eEProfile
    Boolean wgWg
    Boolean filterFilterMsa
    Boolean maxMaxSeqId
    Boolean qidQid
    Boolean qscQsc
    Boolean covCov
    Boolean diffDiff
    Boolean numNumIterations
    Boolean noNoPreload
    Boolean reReScoreMode
    Boolean minMinLength
    Boolean maxMaxLength
    Boolean maxMaxGaps
    Boolean contigContigStartMode
    Boolean contigContigEndMode
    Boolean orfOrfStartMode
    Boolean forwardForwardFrames
    Boolean reverseReverseFrames
    Boolean translationTranslationTable
    Boolean useUseAllTableStarts
    Boolean idIdOffset
    Boolean addAddOrfStop
    Boolean startStartSens
    Boolean sensSensSteps
    Boolean lcaLcaRanks
    Boolean blacklistBlacklist
    Boolean lcaLcaMode
    Boolean subSubMat
    Boolean maxMaxSeqLen
    Boolean maxMaxSeqs
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs taxonomy \
      ~{true="--comp-bias-corr" false="" compCompBiasCorr} \
      ~{true="--add-self-matches" false="" addAddSelfMatches} \
      ~{true="-s" false="" sS} \
      ~{true="-k" false="" kK} \
      ~{true="--k-score" false="" kKScore} \
      ~{true="--alph-size" false="" alphAlphSize} \
      ~{true="--offset-result" false="" offsetOffsetResult} \
      ~{true="--split" false="" splitSplit} \
      ~{true="--split-mode" false="" splitSplitMode} \
      ~{true="--split-memory-limit" false="" splitSplitMemoryLimit} \
      ~{true="--diag-score" false="" diagDiagScore} \
      ~{true="--exact-kmer-matching" false="" exactExactKmErMatching} \
      ~{true="--mask" false="" maskMask} \
      ~{true="--min-ungapped-score" false="" minMinUnGappedScore} \
      ~{true="--spaced-kmer-mode" false="" spacedSpacedKmErMode} \
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
      ~{true="--pca" false="" pcPcA} \
      ~{true="--pcb" false="" pcbPcb} \
      ~{true="--mask-profile" false="" maskMaskProfile} \
      ~{true="--e-profile" false="" eEProfile} \
      ~{true="--wg" false="" wgWg} \
      ~{true="--filter-msa" false="" filterFilterMsa} \
      ~{true="--max-seq-id" false="" maxMaxSeqId} \
      ~{true="--qid" false="" qidQid} \
      ~{true="--qsc" false="" qscQsc} \
      ~{true="--cov" false="" covCov} \
      ~{true="--diff" false="" diffDiff} \
      ~{true="--num-iterations" false="" numNumIterations} \
      ~{true="--no-preload" false="" noNoPreload} \
      ~{true="--rescore-mode" false="" reReScoreMode} \
      ~{true="--min-length" false="" minMinLength} \
      ~{true="--max-length" false="" maxMaxLength} \
      ~{true="--max-gaps" false="" maxMaxGaps} \
      ~{true="--contig-start-mode" false="" contigContigStartMode} \
      ~{true="--contig-end-mode" false="" contigContigEndMode} \
      ~{true="--orf-start-mode" false="" orfOrfStartMode} \
      ~{true="--forward-frames" false="" forwardForwardFrames} \
      ~{true="--reverse-frames" false="" reverseReverseFrames} \
      ~{true="--translation-table" false="" translationTranslationTable} \
      ~{true="--use-all-table-starts" false="" useUseAllTableStarts} \
      ~{true="--id-offset" false="" idIdOffset} \
      ~{true="--add-orf-stop" false="" addAddOrfStop} \
      ~{true="--start-sens" false="" startStartSens} \
      ~{true="--sens-steps" false="" sensSensSteps} \
      ~{true="--lca-ranks" false="" lcaLcaRanks} \
      ~{true="--blacklist" false="" blacklistBlacklist} \
      ~{true="--lca-mode" false="" lcaLcaMode} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--max-seq-len" false="" maxMaxSeqLen} \
      ~{true="--max-seqs" false="" maxMaxSeqs} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}