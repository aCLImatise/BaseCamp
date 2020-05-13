version 1.0

task PhyluceAlignGetAlignSummaryData {
  input {
    String alignmentsAlignments
    String inputInputFormat
    Boolean showShowTaxOnCounts
    String verbosityVerbosity
    String logLogPath
    String coresCores
    String outputOutputStats
  }
  command <<<
    phyluce_align_get_align_summary_data \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{true="--show-taxon-counts" false="" showShowTaxOnCounts} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(outputOutputStats) then ("--output-stats " +  '"' + outputOutputStats + '"') else ""}
  >>>
}