version 1.0

task PhyluceAlignFormatConcatenatedPhylipForPaml {
  input {
    String phylipPhylipAlignment
    String configConfig
    String outputOutput
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_align_format_concatenated_phylip_for_paml \
      ~{if defined(phylipPhylipAlignment) then ("--phylip-alignment " +  '"' + phylipPhylipAlignment + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}