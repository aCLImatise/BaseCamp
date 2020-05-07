version 1.0

task Lima {
  input {
    Boolean sameSame
    Boolean differentDifferent
    Boolean neighborsNeighbors
    Boolean perPerRead
    Boolean scoreScoreFullPass
    Boolean maxMaxScoredBarcodePairs
    Boolean maxMaxScoredBarcodes
    Boolean maxMaxScoredAdapters
    Boolean minMinPasses
    Boolean minMinLength
    Boolean maxMaxInputLength
    Boolean badBadAdapterRatio
    Boolean sharedSharedPrefix
    Boolean windowWindowSizeMulti
    Boolean windowWindowSize
    Boolean minMinRefSpan
    Boolean minMinScoringRegions
    Boolean minMinScore
    Boolean minMinEndScore
    Boolean minMinSignalIncrease
    Boolean minMinScoreLead
    Boolean keepKeepTagIdxOrder
    Boolean keepKeepSplitIdxOrder
    Boolean ccsCcs
    Boolean matchMatchScore
    Boolean mismatchMismatchPenalty
    Boolean deletionDeletionPenalty
    Boolean insertionInsertionPenalty
    Boolean branchBranchPenalty
    Boolean splitSplitBam
    Boolean splitSplitBamNamed
    Boolean filesFilesPerDirectory
    Boolean reuseReuseUuids
    Boolean bamBamHandles
    Boolean dumpDumpClips
    Boolean dumpDumpRemoved
    Boolean noNoBam
    Boolean noNoReports
    Boolean singleSingleSide
    Boolean scoredScoredAdapterRatio
    Boolean isoIsoSeq
    Boolean peekPeek
    Boolean guessGuess
    Boolean guessGuessMinCount
    Boolean peekPeekGuess
    Boolean ignoreIgnoreBioSamples
    Boolean numNumThreads
    Boolean logLogLevel
    Boolean logLogFile
    String? inputInput
    String? barcodesBarcodes
    String? outputOutput
  }
  command <<<
    lima \
      ~{inputInput} \
      ~{true="--same" false="" sameSame} \
      ~{true="--different" false="" differentDifferent} \
      ~{true="--neighbors" false="" neighborsNeighbors} \
      ~{true="--per-read" false="" perPerRead} \
      ~{true="--score-full-pass" false="" scoreScoreFullPass} \
      ~{true="--max-scored-barcode-pairs" false="" maxMaxScoredBarcodePairs} \
      ~{true="--max-scored-barcodes" false="" maxMaxScoredBarcodes} \
      ~{true="--max-scored-adapters" false="" maxMaxScoredAdapters} \
      ~{true="--min-passes" false="" minMinPasses} \
      ~{true="--min-length" false="" minMinLength} \
      ~{true="--max-input-length" false="" maxMaxInputLength} \
      ~{true="--bad-adapter-ratio" false="" badBadAdapterRatio} \
      ~{true="--shared-prefix" false="" sharedSharedPrefix} \
      ~{true="--window-size-multi" false="" windowWindowSizeMulti} \
      ~{true="--window-size" false="" windowWindowSize} \
      ~{true="--min-ref-span" false="" minMinRefSpan} \
      ~{true="--min-scoring-regions" false="" minMinScoringRegions} \
      ~{true="--min-score" false="" minMinScore} \
      ~{true="--min-end-score" false="" minMinEndScore} \
      ~{true="--min-signal-increase" false="" minMinSignalIncrease} \
      ~{true="--min-score-lead" false="" minMinScoreLead} \
      ~{true="--keep-tag-idx-order" false="" keepKeepTagIdxOrder} \
      ~{true="--keep-split-idx-order" false="" keepKeepSplitIdxOrder} \
      ~{true="--ccs" false="" ccsCcs} \
      ~{true="--match-score" false="" matchMatchScore} \
      ~{true="--mismatch-penalty" false="" mismatchMismatchPenalty} \
      ~{true="--deletion-penalty" false="" deletionDeletionPenalty} \
      ~{true="--insertion-penalty" false="" insertionInsertionPenalty} \
      ~{true="--branch-penalty" false="" branchBranchPenalty} \
      ~{true="--split-bam" false="" splitSplitBam} \
      ~{true="--split-bam-named" false="" splitSplitBamNamed} \
      ~{true="--files-per-directory" false="" filesFilesPerDirectory} \
      ~{true="--reuse-uuids" false="" reuseReuseUuids} \
      ~{true="--bam-handles" false="" bamBamHandles} \
      ~{true="--dump-clips" false="" dumpDumpClips} \
      ~{true="--dump-removed" false="" dumpDumpRemoved} \
      ~{true="--no-bam" false="" noNoBam} \
      ~{true="--no-reports" false="" noNoReports} \
      ~{true="--single-side" false="" singleSingleSide} \
      ~{true="--scored-adapter-ratio" false="" scoredScoredAdapterRatio} \
      ~{true="--isoseq" false="" isoIsoSeq} \
      ~{true="--peek" false="" peekPeek} \
      ~{true="--guess" false="" guessGuess} \
      ~{true="--guess-min-count" false="" guessGuessMinCount} \
      ~{true="--peek-guess" false="" peekPeekGuess} \
      ~{true="--ignore-biosamples" false="" ignoreIgnoreBioSamples} \
      ~{true="--num-threads" false="" numNumThreads} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile} \
      ~{barcodesBarcodes} \
      ~{outputOutput}
  >>>
}