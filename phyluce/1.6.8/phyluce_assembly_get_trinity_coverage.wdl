version 1.0

task PhyluceAssemblyGetTrinityCoverage {
  input {
    String assembliesAssemblies
    String assembAssembLoConfig
    String coresCores
    String subfolderSubfolder
    String verbosityVerbosity
    String logLogPath
    Boolean cleanClean
    Boolean bwaBwaMem
    String assemblerAssembler
    Boolean trimTrim
  }
  command <<<
    phyluce_assembly_get_trinity_coverage \
      ~{if defined(assembliesAssemblies) then ("--assemblies " +  '"' + assembliesAssemblies + '"') else ""} \
      ~{if defined(assembAssembLoConfig) then ("--assemblo-config " +  '"' + assembAssembLoConfig + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(subfolderSubfolder) then ("--subfolder " +  '"' + subfolderSubfolder + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{true="--clean" false="" cleanClean} \
      ~{true="--bwa-mem" false="" bwaBwaMem} \
      ~{if defined(assemblerAssembler) then ("--assembler " +  '"' + assemblerAssembler + '"') else ""} \
      ~{true="--trim" false="" trimTrim}
  >>>
}