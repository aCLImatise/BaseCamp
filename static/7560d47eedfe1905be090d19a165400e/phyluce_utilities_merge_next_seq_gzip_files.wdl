version 1.0

task PhyluceUtilitiesMergeNextSeqGzipFiles {
  input {
    String inputInput
    String configConfig
    String outputOutput
    String sectionSection
    String verbosityVerbosity
    String logLogPath
    Boolean seSe
  }
  command <<<
    phyluce_utilities_merge_next_seq_gzip_files \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(sectionSection) then ("--section " +  '"' + sectionSection + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{true="--se" false="" seSe}
  >>>
}