version 1.0

task PhyluceAlignExtractTaxaFromAlignments {
  input {
    String alignmentsAlignments
    String outputOutput
    String inputInputFormat
    String outputOutputFormat
    String verbosityVerbosity
    String logLogPath
    String coresCores
    Boolean skipSkipCheck
    Array[String]+ excludeExclude
    Array[String]+ includeInclude
  }
  command <<<
    phyluce_align_extract_taxa_from_alignments \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--skip-check" false="" skipSkipCheck} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""}
  >>>
}