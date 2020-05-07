version 1.0

task PhyluceAssemblyMatchContigsToProbes {
  input {
    String contigsContigs
    String probesProbes
    String outputOutput
    String verbosityVerbosity
    String logLogPath
    Int minMinCoverage
    Int minMinIdentity
    String dupeDupeFile
    String regexRegex
    String keepKeepDuplicates
  }
  command <<<
    phyluce_assembly_match_contigs_to_probes \
      ~{if defined(contigsContigs) then ("--contigs " +  '"' + contigsContigs + '"') else ""} \
      ~{if defined(probesProbes) then ("--probes " +  '"' + probesProbes + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(minMinIdentity) then ("--min-identity " +  '"' + minMinIdentity + '"') else ""} \
      ~{if defined(dupeDupeFile) then ("--dupefile " +  '"' + dupeDupeFile + '"') else ""} \
      ~{if defined(regexRegex) then ("--regex " +  '"' + regexRegex + '"') else ""} \
      ~{if defined(keepKeepDuplicates) then ("--keep-duplicates " +  '"' + keepKeepDuplicates + '"') else ""}
  >>>
}