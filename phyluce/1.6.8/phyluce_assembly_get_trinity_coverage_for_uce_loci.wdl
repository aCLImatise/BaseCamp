version 1.0

task PhyluceAssemblyGetTrinityCoverageForUceLoci {
  input {
    String assembliesAssemblies
    String matchMatchCountOutput
    String typeType
    Array[String]+ excludeExclude
    String locusLocusDb
    String outputOutput
    String resumeResume
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_assembly_get_trinity_coverage_for_uce_loci \
      ~{if defined(assembliesAssemblies) then ("--assemblies " +  '"' + assembliesAssemblies + '"') else ""} \
      ~{if defined(matchMatchCountOutput) then ("--match-count-output " +  '"' + matchMatchCountOutput + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(locusLocusDb) then ("--locus-db " +  '"' + locusLocusDb + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(resumeResume) then ("--resume " +  '"' + resumeResume + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}