version 1.0

task PhyluceAssemblyAssembloTrinity {
  input {
    String outputOutput
    String coresCores
    String subfolderSubfolder
    String verbosityVerbosity
    String logLogPath
    Boolean cleanClean
    Int minMinKmErCoverage
    String configConfig
    String dirDir
  }
  command <<<
    phyluce_assembly_assemblo_trinity \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(subfolderSubfolder) then ("--subfolder " +  '"' + subfolderSubfolder + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{true="--clean" false="" cleanClean} \
      ~{if defined(minMinKmErCoverage) then ("--min-kmer-coverage " +  '"' + minMinKmErCoverage + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""}
  >>>
}