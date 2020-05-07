version 1.0

task PhyluceSnpScreenPhasedAlignments {
  input {
    String alignmentsAlignments
    String outputOutput
    String inputInputFormat
    String outputOutputFormat
    Boolean includeIncludeMissing
    Boolean randomRandom
    Boolean numericalNumericalEncoding
    String coresCores
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_snp_screen_phased_alignments \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{true="--include-missing" false="" includeIncludeMissing} \
      ~{true="--random" false="" randomRandom} \
      ~{true="--numerical-encoding" false="" numericalNumericalEncoding} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}