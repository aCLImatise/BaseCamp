version 1.0

task PhyluceAlignGetGblocksTrimmedAlignmentsFromUntrimmed {
  input {
    String alignmentsAlignments
    String outputOutput
    String inputInputFormat
    String outputOutputFormat
    String b1B1
    String b2B2
    String b3B3
    String b4B4
    String verbosityVerbosity
    String logLogPath
    String coresCores
  }
  command <<<
    phyluce_align_get_gblocks_trimmed_alignments_from_untrimmed \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(b1B1) then ("--b1 " +  '"' + b1B1 + '"') else ""} \
      ~{if defined(b2B2) then ("--b2 " +  '"' + b2B2 + '"') else ""} \
      ~{if defined(b3B3) then ("--b3 " +  '"' + b3B3 + '"') else ""} \
      ~{if defined(b4B4) then ("--b4 " +  '"' + b4B4 + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}