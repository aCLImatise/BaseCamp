version 1.0

task PhyluceAssemblyAssembloSpades {
  input {
    String outputOutput
    String coresCores
    String subfolderSubfolder
    String verbosityVerbosity
    String logLogPath
    Boolean doDoNotClean
    String configConfig
    String dirDir
  }
  command <<<
    phyluce_assembly_assemblo_spades \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(subfolderSubfolder) then ("--subfolder " +  '"' + subfolderSubfolder + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{true="--do-not-clean" false="" doDoNotClean} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""}
  >>>
}