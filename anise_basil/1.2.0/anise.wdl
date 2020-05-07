version 1.0

task Anise {
  input {
    Boolean quietQuiet
    Boolean verboseVerbose
    Boolean veryVeryVerbose
    Int numNumThreads
    Int debugDebugSiteId
    Int debugDebugStepNo
    Boolean noNoAutoTuning
    String outputOutputFastA
    String outputOutputMapping
    String outputOutputDebugDir
    Boolean cleanCleanUpTmpFiles
    Int recursionRecursionMaxSteps
    Boolean noNoRealignAssembly
    Float maxMaxReadsFactor
    Int stopStopInitialReadCount
    Int stopStopTexReadCount
    Int stopStopReadCount
    Int stopStopCoverage
    Int realignmentRealignmentBandwidth
    Int realignmentRealignmentBorder
    Boolean noNoSeparateRepeats
    String repRepSepTammiMethod
    Float repRepSepPErr
    Float repRepSepMaxRandomCorrelation
    Int repRepSepTauMin
    Int repRepSepRMin
    Int repRepSepMinOverlap
    Int repRepSepStartCompressionAt
    Boolean repRepSepSplitDMin
    String fragmentFragmentSizeFactor
    String autoAutoLibraryNumRecords
    Int fragmentFragmentSizeMedian
    String fragmentFragmentSizeStdDev
    String fragmentFragmentDefaultOrientation
    Int assemblyAssemblySiteWindowRadius
    Int assemblyAssemblySiteFringeRadius
    String readReadMappingErrorRate
    Int readReadMappingBatchSize
    String overlapOverlapPerMinOverlapRatio
    Int overlapOverlapPerMaxErrorRate
    Boolean noNoReadCorrection
    Int msaMsaScoreMatch
    Int msaMsaScoreMismatch
    Int msaMsaScoreGapOpen
    Int msaMsaScoreGapExtend
    Int consensusConsensusMinBaseSupport
    String consensusConsensusMinContigLengthRate
  }
  command <<<
    anise \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--very-verbose" false="" veryVeryVerbose} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(debugDebugSiteId) then ("--debug-site-id " +  '"' + debugDebugSiteId + '"') else ""} \
      ~{if defined(debugDebugStepNo) then ("--debug-step-no " +  '"' + debugDebugStepNo + '"') else ""} \
      ~{true="--no-auto-tuning" false="" noNoAutoTuning} \
      ~{if defined(outputOutputFastA) then ("--output-fasta " +  '"' + outputOutputFastA + '"') else ""} \
      ~{if defined(outputOutputMapping) then ("--output-mapping " +  '"' + outputOutputMapping + '"') else ""} \
      ~{if defined(outputOutputDebugDir) then ("--output-debug-dir " +  '"' + outputOutputDebugDir + '"') else ""} \
      ~{true="--clean-up-tmp-files" false="" cleanCleanUpTmpFiles} \
      ~{if defined(recursionRecursionMaxSteps) then ("--recursion-max-steps " +  '"' + recursionRecursionMaxSteps + '"') else ""} \
      ~{true="--no-realign-assembly" false="" noNoRealignAssembly} \
      ~{if defined(maxMaxReadsFactor) then ("--max-reads-factor " +  '"' + maxMaxReadsFactor + '"') else ""} \
      ~{if defined(stopStopInitialReadCount) then ("--stop-initial-read-count " +  '"' + stopStopInitialReadCount + '"') else ""} \
      ~{if defined(stopStopTexReadCount) then ("--stop-tex-read-count " +  '"' + stopStopTexReadCount + '"') else ""} \
      ~{if defined(stopStopReadCount) then ("--stop-read-count " +  '"' + stopStopReadCount + '"') else ""} \
      ~{if defined(stopStopCoverage) then ("--stop-coverage " +  '"' + stopStopCoverage + '"') else ""} \
      ~{if defined(realignmentRealignmentBandwidth) then ("--realignment-bandwidth " +  '"' + realignmentRealignmentBandwidth + '"') else ""} \
      ~{if defined(realignmentRealignmentBorder) then ("--realignment-border " +  '"' + realignmentRealignmentBorder + '"') else ""} \
      ~{true="--no-separate-repeats" false="" noNoSeparateRepeats} \
      ~{if defined(repRepSepTammiMethod) then ("--repsep-tammi-method " +  '"' + repRepSepTammiMethod + '"') else ""} \
      ~{if defined(repRepSepPErr) then ("--repsep-p-err " +  '"' + repRepSepPErr + '"') else ""} \
      ~{if defined(repRepSepMaxRandomCorrelation) then ("--repsep-max-random-correlation " +  '"' + repRepSepMaxRandomCorrelation + '"') else ""} \
      ~{if defined(repRepSepTauMin) then ("--repsep-tau-min " +  '"' + repRepSepTauMin + '"') else ""} \
      ~{if defined(repRepSepRMin) then ("--repsep-r-min " +  '"' + repRepSepRMin + '"') else ""} \
      ~{if defined(repRepSepMinOverlap) then ("--repsep-min-overlap " +  '"' + repRepSepMinOverlap + '"') else ""} \
      ~{if defined(repRepSepStartCompressionAt) then ("--repsep-start-compression-at " +  '"' + repRepSepStartCompressionAt + '"') else ""} \
      ~{true="--repsep-split-d-min" false="" repRepSepSplitDMin} \
      ~{if defined(fragmentFragmentSizeFactor) then ("--fragment-size-factor " +  '"' + fragmentFragmentSizeFactor + '"') else ""} \
      ~{if defined(autoAutoLibraryNumRecords) then ("--auto-library-num-records " +  '"' + autoAutoLibraryNumRecords + '"') else ""} \
      ~{if defined(fragmentFragmentSizeMedian) then ("--fragment-size-median " +  '"' + fragmentFragmentSizeMedian + '"') else ""} \
      ~{if defined(fragmentFragmentSizeStdDev) then ("--fragment-size-std-dev " +  '"' + fragmentFragmentSizeStdDev + '"') else ""} \
      ~{if defined(fragmentFragmentDefaultOrientation) then ("--fragment-default-orientation " +  '"' + fragmentFragmentDefaultOrientation + '"') else ""} \
      ~{if defined(assemblyAssemblySiteWindowRadius) then ("--assembly-site-window-radius " +  '"' + assemblyAssemblySiteWindowRadius + '"') else ""} \
      ~{if defined(assemblyAssemblySiteFringeRadius) then ("--assembly-site-fringe-radius " +  '"' + assemblyAssemblySiteFringeRadius + '"') else ""} \
      ~{if defined(readReadMappingErrorRate) then ("--read-mapping-error-rate " +  '"' + readReadMappingErrorRate + '"') else ""} \
      ~{if defined(readReadMappingBatchSize) then ("--read-mapping-batch-size " +  '"' + readReadMappingBatchSize + '"') else ""} \
      ~{if defined(overlapOverlapPerMinOverlapRatio) then ("--overlapper-min-overlap-ratio " +  '"' + overlapOverlapPerMinOverlapRatio + '"') else ""} \
      ~{if defined(overlapOverlapPerMaxErrorRate) then ("--overlapper-max-error-rate " +  '"' + overlapOverlapPerMaxErrorRate + '"') else ""} \
      ~{true="--no-read-correction" false="" noNoReadCorrection} \
      ~{if defined(msaMsaScoreMatch) then ("--msa-score-match " +  '"' + msaMsaScoreMatch + '"') else ""} \
      ~{if defined(msaMsaScoreMismatch) then ("--msa-score-mismatch " +  '"' + msaMsaScoreMismatch + '"') else ""} \
      ~{if defined(msaMsaScoreGapOpen) then ("--msa-score-gap-open " +  '"' + msaMsaScoreGapOpen + '"') else ""} \
      ~{if defined(msaMsaScoreGapExtend) then ("--msa-score-gap-extend " +  '"' + msaMsaScoreGapExtend + '"') else ""} \
      ~{if defined(consensusConsensusMinBaseSupport) then ("--consensus-min-base-support " +  '"' + consensusConsensusMinBaseSupport + '"') else ""} \
      ~{if defined(consensusConsensusMinContigLengthRate) then ("--consensus-min-contig-length-rate " +  '"' + consensusConsensusMinContigLengthRate + '"') else ""}
  >>>
}