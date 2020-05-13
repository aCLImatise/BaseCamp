version 1.0

task PhyluceAlignRemoveLocusNameFromNexusLines {
  input {
    String alignmentsAlignments
    String outputOutput
    String taxTaxA
    String inputInputFormat
    String outputOutputFormat
    String verbosityVerbosity
    String logLogPath
    String coresCores
  }
  command <<<
    phyluce_align_remove_locus_name_from_nexus_lines \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(taxTaxA) then ("--taxa " +  '"' + taxTaxA + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}