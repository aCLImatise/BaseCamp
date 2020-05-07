version 1.0

task MbPlotTransitionFrequencies {
  input {
    String coverageCoverage
    String limitLimit
    Boolean verboseVerbose
    Boolean removeRemove
    String? inputInputFile
    String? outdirOutdir
    String? prefixPrefix
  }
  command <<<
    mb-plot-transition-frequencies \
      ~{inputInputFile} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--remove" false="" removeRemove} \
      ~{outdirOutdir} \
      ~{prefixPrefix}
  >>>
}