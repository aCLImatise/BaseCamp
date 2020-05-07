version 1.0

task PhyluceAssemblyGetFastasFromMatchCounts {
  input {
    String contigsContigs
    String locusLocusDb
    String matchMatchCountOutput
    String incompleteIncompleteMatrix
    String outputOutput
    String verbosityVerbosity
    String logLogPath
    String extendExtendLocusDb
    String extendExtendLocusContigs
  }
  command <<<
    phyluce_assembly_get_fastas_from_match_counts \
      ~{if defined(contigsContigs) then ("--contigs " +  '"' + contigsContigs + '"') else ""} \
      ~{if defined(locusLocusDb) then ("--locus-db " +  '"' + locusLocusDb + '"') else ""} \
      ~{if defined(matchMatchCountOutput) then ("--match-count-output " +  '"' + matchMatchCountOutput + '"') else ""} \
      ~{if defined(incompleteIncompleteMatrix) then ("--incomplete-matrix " +  '"' + incompleteIncompleteMatrix + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{if defined(extendExtendLocusDb) then ("--extend-locus-db " +  '"' + extendExtendLocusDb + '"') else ""} \
      ~{if defined(extendExtendLocusContigs) then ("--extend-locus-contigs " +  '"' + extendExtendLocusContigs + '"') else ""}
  >>>
}