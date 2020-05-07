version 1.0

task PhyluceAlignGetTrimmedAlignmentsFromUntrimmed {
  input {
    String alignmentsAlignments
    String outputOutput
    String inputInputFormat
    String outputOutputFormat
    String verbosityVerbosity
    String logLogPath
    String windowWindow
    String proportionProportion
    String thresholdThreshold
    Int maxMaxDivergence
    Int minMinLength
    String coresCores
  }
  command <<<
    phyluce_align_get_trimmed_alignments_from_untrimmed \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(proportionProportion) then ("--proportion " +  '"' + proportionProportion + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(maxMaxDivergence) then ("--max_divergence " +  '"' + maxMaxDivergence + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}