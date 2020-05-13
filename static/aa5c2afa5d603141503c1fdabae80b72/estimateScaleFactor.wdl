version 1.0

task EstimateScaleFactor {
  input {
    String bamBamFiles
    String ignoreIgnoreForNormalization
    String sampleSampleWindowLength
    String numberNumberOfSamples
    String normalizationNormalizationLength
    Boolean skipSkipZeros
    Int numberNumberOfProcessors
    Boolean verboseVerbose
  }
  command <<<
    estimateScaleFactor \
      ~{if defined(bamBamFiles) then ("--bamfiles " +  '"' + bamBamFiles + '"') else ""} \
      ~{if defined(ignoreIgnoreForNormalization) then ("--ignoreForNormalization " +  '"' + ignoreIgnoreForNormalization + '"') else ""} \
      ~{if defined(sampleSampleWindowLength) then ("--sampleWindowLength " +  '"' + sampleSampleWindowLength + '"') else ""} \
      ~{if defined(numberNumberOfSamples) then ("--numberOfSamples " +  '"' + numberNumberOfSamples + '"') else ""} \
      ~{if defined(normalizationNormalizationLength) then ("--normalizationLength " +  '"' + normalizationNormalizationLength + '"') else ""} \
      ~{true="--skipZeros" false="" skipSkipZeros} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}