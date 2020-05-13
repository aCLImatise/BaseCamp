version 1.0

task PhyluceAssemblyExtractContigsToBarcodes {
  input {
    String contigsContigs
    String configConfig
    String outputOutput
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_assembly_extract_contigs_to_barcodes \
      ~{if defined(contigsContigs) then ("--contigs " +  '"' + contigsContigs + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}