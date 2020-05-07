version 1.0

task Albatradis {
  input {
    String spanSpanGaps
    String iterationsIterations
    Int minimumMinimumBlock
    Int minimumMinimumLogFc
    Int minimumMinimumLogCpm
    Int minimumMinimumThreshold
    Int minimumMinimumProportionInsertions
    Boolean dontDontNormalisePlots
    String prefixPrefix
    String pPValue
    String qQValue
    Boolean strictStrictSignal
    Boolean useUseAnnotation
    String primePrimeFeatureSize
    String windowWindowInterval
    String windowWindowSize
    Boolean verboseVerbose
    Boolean debugDebug
    String? emblEmblFile
    String? plotPlotFiles
  }
  command <<<
    albatradis \
      ~{emblEmblFile} \
      ~{if defined(spanSpanGaps) then ("--span_gaps " +  '"' + spanSpanGaps + '"') else ""} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(minimumMinimumBlock) then ("--minimum_block " +  '"' + minimumMinimumBlock + '"') else ""} \
      ~{if defined(minimumMinimumLogFc) then ("--minimum_logfc " +  '"' + minimumMinimumLogFc + '"') else ""} \
      ~{if defined(minimumMinimumLogCpm) then ("--minimum_logcpm " +  '"' + minimumMinimumLogCpm + '"') else ""} \
      ~{if defined(minimumMinimumThreshold) then ("--minimum_threshold " +  '"' + minimumMinimumThreshold + '"') else ""} \
      ~{if defined(minimumMinimumProportionInsertions) then ("--minimum_proportion_insertions " +  '"' + minimumMinimumProportionInsertions + '"') else ""} \
      ~{true="--dont_normalise_plots" false="" dontDontNormalisePlots} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(pPValue) then ("--pvalue " +  '"' + pPValue + '"') else ""} \
      ~{if defined(qQValue) then ("--qvalue " +  '"' + qQValue + '"') else ""} \
      ~{true="--strict_signal" false="" strictStrictSignal} \
      ~{true="--use_annotation" false="" useUseAnnotation} \
      ~{if defined(primePrimeFeatureSize) then ("--prime_feature_size " +  '"' + primePrimeFeatureSize + '"') else ""} \
      ~{if defined(windowWindowInterval) then ("--window_interval " +  '"' + windowWindowInterval + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window_size " +  '"' + windowWindowSize + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{plotPlotFiles}
  >>>
}