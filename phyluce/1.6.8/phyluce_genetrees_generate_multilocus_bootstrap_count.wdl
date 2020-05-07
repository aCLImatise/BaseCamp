version 1.0

task PhyluceGenetreesGenerateMultilocusBootstrapCount {
  input {
    String alignmentsAlignments
    String bootstrapBootstrapReplicates
    Directory directoryDirectory
    String bootstrapBootstrapCounts
    String bootBootReps
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_genetrees_generate_multilocus_bootstrap_count \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(bootstrapBootstrapReplicates) then ("--bootstrap_replicates " +  '"' + bootstrapBootstrapReplicates + '"') else ""} \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{if defined(bootstrapBootstrapCounts) then ("--bootstrap_counts " +  '"' + bootstrapBootstrapCounts + '"') else ""} \
      ~{if defined(bootBootReps) then ("--bootreps " +  '"' + bootBootReps + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}