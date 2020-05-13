version 1.0

task PhyluceAlignReduceAlignmentsWithRaxml {
  input {
    String alignmentsAlignments
    String outputOutput
    String inputInputFormat
    String coresCores
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_align_reduce_alignments_with_raxml \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}