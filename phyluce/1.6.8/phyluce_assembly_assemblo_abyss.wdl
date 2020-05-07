version 1.0

task PhyluceAssemblyAssembloAbyss {
  input {
    String outputOutput
    String kmKmEr
    String coresCores
    String subfolderSubfolder
    String verbosityVerbosity
    String logLogPath
    Boolean cleanClean
    Boolean abyssAbyssSe
    String configConfig
    String dirDir
  }
  command <<<
    phyluce_assembly_assemblo_abyss \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(subfolderSubfolder) then ("--subfolder " +  '"' + subfolderSubfolder + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{true="--clean" false="" cleanClean} \
      ~{true="--abyss-se" false="" abyssAbyssSe} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""}
  >>>
}