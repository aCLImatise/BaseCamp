version 1.0

task PhyluceUtilitiesMergeMultipleGzipFiles {
  input {
    String configConfig
    String outputOutput
    String sectionSection
    String verbosityVerbosity
    String logLogPath
    Boolean trimmedTrimmed
  }
  command <<<
    phyluce_utilities_merge_multiple_gzip_files \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(sectionSection) then ("--section " +  '"' + sectionSection + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{true="--trimmed" false="" trimmedTrimmed}
  >>>
}