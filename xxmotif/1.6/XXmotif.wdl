version 1.0

task XXmotif {
  input {
    File negNegSet
    Boolean zZOops
    Boolean mopsMops
    Boolean oopsOops
    Boolean revRevComp
    String backgroundBackgroundModelOrder
    String pseudoPseudo
    String gapsGaps
    String typeType
    String mergeMergeMotifThreshold
    Boolean noNoPwmLengthOptimization
    Int maxMaxMatchPositions
    Boolean batchBatch
    String maxMaxPosSetsize
    String trackedTrackedMotif
    String formatFormat
    String maxMaxMultipleSequences
    Boolean localizationLocalization
    String downstreamDownstream
    String startStartMotif
    File profileProfileFile
    String startStartRegion
    String endregionEndregion
    Boolean saveSaveInitModels
    Boolean saveSaveModels
    Boolean saveSaveExpectationMaximizationLikelihoods
    Boolean saveSaveExpectationMaximizationModels
    Boolean verboseVerbose
  }
  command <<<
    XXmotif \
      ~{if defined(negNegSet) then ("--negSet " +  '"' + negNegSet + '"') else ""} \
      ~{true="--zoops" false="" zZOops} \
      ~{true="--mops" false="" mopsMops} \
      ~{true="--oops" false="" oopsOops} \
      ~{true="--revcomp" false="" revRevComp} \
      ~{if defined(backgroundBackgroundModelOrder) then ("--background-model-order " +  '"' + backgroundBackgroundModelOrder + '"') else ""} \
      ~{if defined(pseudoPseudo) then ("--pseudo " +  '"' + pseudoPseudo + '"') else ""} \
      ~{if defined(gapsGaps) then ("--gaps " +  '"' + gapsGaps + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(mergeMergeMotifThreshold) then ("--merge-motif-threshold " +  '"' + mergeMergeMotifThreshold + '"') else ""} \
      ~{true="--no-pwm-length-optimization" false="" noNoPwmLengthOptimization} \
      ~{if defined(maxMaxMatchPositions) then ("--max-match-positions " +  '"' + maxMaxMatchPositions + '"') else ""} \
      ~{true="--batch" false="" batchBatch} \
      ~{if defined(maxMaxPosSetsize) then ("--maxPosSetSize " +  '"' + maxMaxPosSetsize + '"') else ""} \
      ~{if defined(trackedTrackedMotif) then ("--trackedMotif " +  '"' + trackedTrackedMotif + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(maxMaxMultipleSequences) then ("--maxMultipleSequences " +  '"' + maxMaxMultipleSequences + '"') else ""} \
      ~{true="--localization" false="" localizationLocalization} \
      ~{if defined(downstreamDownstream) then ("--downstream " +  '"' + downstreamDownstream + '"') else ""} \
      ~{if defined(startStartMotif) then ("--startMotif " +  '"' + startStartMotif + '"') else ""} \
      ~{if defined(profileProfileFile) then ("--profileFile " +  '"' + profileProfileFile + '"') else ""} \
      ~{if defined(startStartRegion) then ("--startRegion " +  '"' + startStartRegion + '"') else ""} \
      ~{if defined(endregionEndregion) then ("--endRegion " +  '"' + endregionEndregion + '"') else ""} \
      ~{true="--saveInitModels" false="" saveSaveInitModels} \
      ~{true="--saveModels" false="" saveSaveModels} \
      ~{true="--saveExpectationMaximizationLikelihoods" false="" saveSaveExpectationMaximizationLikelihoods} \
      ~{true="--saveExpectationMaximizationModels" false="" saveSaveExpectationMaximizationModels} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}