version 1.0

task PhyluceSnpBwaMultipleAlign {
  input {
    String configConfig
    String outputOutput
    String subfolderSubfolder
    String coresCores
    String verbosityVerbosity
    String logLogPath
    Boolean noNoRemoveDuplicates
    Boolean memMem
  }
  command <<<
    phyluce_snp_bwa_multiple_align \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(subfolderSubfolder) then ("--subfolder " +  '"' + subfolderSubfolder + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{true="--no-remove-duplicates" false="" noNoRemoveDuplicates} \
      ~{true="--mem" false="" memMem}
  >>>
}