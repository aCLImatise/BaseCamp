version 1.0

task Hivtrace {
  input {
    String inputInput
    String ambiguitiesAmbiguities
    String referenceReference
    String thresholdThreshold
    Int minMinOverlap
    String fractionFraction
    String curateCurate
    String filterFilter
    String stripStripDrams
    Boolean compareCompare
    Boolean doDoNotStoreIntermediate
    Boolean skipSkipAlignment
    String attributesAttributesFile
    String logLog
    String outputOutput
    String priorPrior
  }
  command <<<
    hivtrace \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(ambiguitiesAmbiguities) then ("--ambiguities " +  '"' + ambiguitiesAmbiguities + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--minoverlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(fractionFraction) then ("--fraction " +  '"' + fractionFraction + '"') else ""} \
      ~{if defined(curateCurate) then ("--curate " +  '"' + curateCurate + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(stripStripDrams) then ("--strip_drams " +  '"' + stripStripDrams + '"') else ""} \
      ~{true="--compare" false="" compareCompare} \
      ~{true="--do-not-store-intermediate" false="" doDoNotStoreIntermediate} \
      ~{true="--skip-alignment" false="" skipSkipAlignment} \
      ~{if defined(attributesAttributesFile) then ("--attributes-file " +  '"' + attributesAttributesFile + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(priorPrior) then ("--prior " +  '"' + priorPrior + '"') else ""}
  >>>
}