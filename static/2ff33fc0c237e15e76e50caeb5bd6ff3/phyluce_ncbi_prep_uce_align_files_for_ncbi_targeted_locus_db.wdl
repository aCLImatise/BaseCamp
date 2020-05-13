version 1.0

task PhyluceNcbiPrepUceAlignFilesForNcbiTargetedLocusDb {
  input {
    String alignmentsAlignments
    String confConf
    String outputOutput
    String inputInputFormat
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_ncbi_prep_uce_align_files_for_ncbi_targeted_locus_db \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}