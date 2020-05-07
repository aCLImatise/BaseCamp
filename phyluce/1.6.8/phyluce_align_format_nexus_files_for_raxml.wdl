version 1.0

task PhyluceAlignFormatNexusFilesForRaxml {
  input {
    String alignmentsAlignments
    String outputOutput
    Boolean nexusNexus
    Boolean charsetsCharsets
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_align_format_nexus_files_for_raxml \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--nexus" false="" nexusNexus} \
      ~{true="--charsets" false="" charsetsCharsets} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}