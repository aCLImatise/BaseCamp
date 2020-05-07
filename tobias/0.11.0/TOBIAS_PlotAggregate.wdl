version 1.0

task TOBIASPlotAggregate {
  input {
    Boolean tfbsTfbs
    Boolean signalsSignals
    Boolean regionsRegions
    Boolean whitelistWhitelist
    Boolean blacklistBlacklist
    Boolean outputOutput
    Boolean titleTitle
    Boolean flankFlank
    Boolean tfbsTfbsLabels
    Boolean signalSignalLabels
    Boolean regionRegionLabels
    Boolean shareShareY
    Boolean normalizeNormalize
    Boolean negateNegate
    Int smoothSmooth
    Boolean logLogTransform
    Boolean plotPlotBoundaries
    Boolean signalSignalOnX
    Float removeRemoveOutliers
    Int verbosityVerbosity
  }
  command <<<
    TOBIAS PlotAggregate \
      ~{true="--TFBS" false="" tfbsTfbs} \
      ~{true="--signals" false="" signalsSignals} \
      ~{true="--regions" false="" regionsRegions} \
      ~{true="--whitelist" false="" whitelistWhitelist} \
      ~{true="--blacklist" false="" blacklistBlacklist} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--title" false="" titleTitle} \
      ~{true="--flank" false="" flankFlank} \
      ~{true="--TFBS-labels" false="" tfbsTfbsLabels} \
      ~{true="--signal-labels" false="" signalSignalLabels} \
      ~{true="--region-labels" false="" regionRegionLabels} \
      ~{true="--share-y" false="" shareShareY} \
      ~{true="--normalize" false="" normalizeNormalize} \
      ~{true="--negate" false="" negateNegate} \
      ~{if defined(smoothSmooth) then ("--smooth " +  '"' + smoothSmooth + '"') else ""} \
      ~{true="--log-transform" false="" logLogTransform} \
      ~{true="--plot-boundaries" false="" plotPlotBoundaries} \
      ~{true="--signal-on-x" false="" signalSignalOnX} \
      ~{if defined(removeRemoveOutliers) then ("--remove-outliers " +  '"' + removeRemoveOutliers + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}