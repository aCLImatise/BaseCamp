version 1.0

task PhyluceAlignScreenAlignmentsForProblems {
  input {
    String alignmentsAlignments
    String outputOutput
    Boolean doDoNotScreenN
    Boolean doDoNotScreenX
    String inputInputFormat
    String verbosityVerbosity
    String logLogPath
    String coresCores
  }
  command <<<
    phyluce_align_screen_alignments_for_problems \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--do-not-screen-n" false="" doDoNotScreenN} \
      ~{true="--do-not-screen-x" false="" doDoNotScreenX} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}