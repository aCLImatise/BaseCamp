version 1.0

task Idr {
  input {
    String samplesSamples
    String peakPeakList
    String inputInputFileType
    String rankRank
    String outputOutputFile
    String outputOutputFileType
    String logLogOutputFile
    String idrIdrThreshold
    String softSoftIdrThreshold
    Boolean useUseOldOutputFormat
    Boolean plotPlot
    Boolean useUseNonoverlappingPeaks
    String peakPeakMergeMethod
    String initialInitialMu
    String initialInitialSigma
    String initialInitialRho
    String initialInitialMixParam
    Boolean fixFixMu
    Boolean fixFixSigma
    Boolean dontDontFilterPeaksBelowNoiseMean
    Boolean useUseBestMultiSummitIdr
    Boolean allowAllowNegativeScores
    String randomRandomSeed
    Int maxMaxIter
    String convergenceConvergenceEps
    Boolean onlyOnlyMergePeaks
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    idr \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(peakPeakList) then ("--peak-list " +  '"' + peakPeakList + '"') else ""} \
      ~{if defined(inputInputFileType) then ("--input-file-type " +  '"' + inputInputFileType + '"') else ""} \
      ~{if defined(rankRank) then ("--rank " +  '"' + rankRank + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(outputOutputFileType) then ("--output-file-type " +  '"' + outputOutputFileType + '"') else ""} \
      ~{if defined(logLogOutputFile) then ("--log-output-file " +  '"' + logLogOutputFile + '"') else ""} \
      ~{if defined(idrIdrThreshold) then ("--idr-threshold " +  '"' + idrIdrThreshold + '"') else ""} \
      ~{if defined(softSoftIdrThreshold) then ("--soft-idr-threshold " +  '"' + softSoftIdrThreshold + '"') else ""} \
      ~{true="--use-old-output-format" false="" useUseOldOutputFormat} \
      ~{true="--plot" false="" plotPlot} \
      ~{true="--use-nonoverlapping-peaks" false="" useUseNonoverlappingPeaks} \
      ~{if defined(peakPeakMergeMethod) then ("--peak-merge-method " +  '"' + peakPeakMergeMethod + '"') else ""} \
      ~{if defined(initialInitialMu) then ("--initial-mu " +  '"' + initialInitialMu + '"') else ""} \
      ~{if defined(initialInitialSigma) then ("--initial-sigma " +  '"' + initialInitialSigma + '"') else ""} \
      ~{if defined(initialInitialRho) then ("--initial-rho " +  '"' + initialInitialRho + '"') else ""} \
      ~{if defined(initialInitialMixParam) then ("--initial-mix-param " +  '"' + initialInitialMixParam + '"') else ""} \
      ~{true="--fix-mu" false="" fixFixMu} \
      ~{true="--fix-sigma" false="" fixFixSigma} \
      ~{true="--dont-filter-peaks-below-noise-mean" false="" dontDontFilterPeaksBelowNoiseMean} \
      ~{true="--use-best-multisummit-IDR" false="" useUseBestMultiSummitIdr} \
      ~{true="--allow-negative-scores" false="" allowAllowNegativeScores} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(maxMaxIter) then ("--max-iter " +  '"' + maxMaxIter + '"') else ""} \
      ~{if defined(convergenceConvergenceEps) then ("--convergence-eps " +  '"' + convergenceConvergenceEps + '"') else ""} \
      ~{true="--only-merge-peaks" false="" onlyOnlyMergePeaks} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}