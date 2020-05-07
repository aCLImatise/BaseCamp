version 1.0

task PhyluceAssemblyGetBedForGenomeEnabledTaxon {
  input {
    String locusLocusDb
    String lastLastZFile
    String taxTaxOnName
    String outputOutput
    String verbosityVerbosity
    String logLogPath
    String regexRegex
  }
  command <<<
    phyluce_assembly_get_bed_for_genome_enabled_taxon \
      ~{if defined(locusLocusDb) then ("--locus-db " +  '"' + locusLocusDb + '"') else ""} \
      ~{if defined(lastLastZFile) then ("--lastz-file " +  '"' + lastLastZFile + '"') else ""} \
      ~{if defined(taxTaxOnName) then ("--taxon-name " +  '"' + taxTaxOnName + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{if defined(regexRegex) then ("--regex " +  '"' + regexRegex + '"') else ""}
  >>>
}