version 1.0

task Hansel {
  input {
    String schemeScheme
    String schemeSchemeName
    String schemeSchemeMetadata
    String pP
    String iI
    String inputInputDirectory
    String outputOutputSummary
    String outputOutputKmErResults
    String outputOutputSimpleSummary
    Boolean forceForce
    Boolean jsonJson
    Int minMinKmErFreq
    Int maxMaxKmErFreq
    String lowLowCovDepthFreq
    Int maxMaxMissingKmErs
    Int minMinAmbiguousKmErs
    String lowLowCovWarning
    Int maxMaxIntermediateKmErs
    Int maxMaxDegenerateKmErs
    String threadsThreads
    Boolean verboseVerbose
    String? fF
  }
  command <<<
    hansel \
      ~{fF} \
      ~{if defined(schemeScheme) then ("--scheme " +  '"' + schemeScheme + '"') else ""} \
      ~{if defined(schemeSchemeName) then ("--scheme-name " +  '"' + schemeSchemeName + '"') else ""} \
      ~{if defined(schemeSchemeMetadata) then ("--scheme-metadata " +  '"' + schemeSchemeMetadata + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(inputInputDirectory) then ("--input-directory " +  '"' + inputInputDirectory + '"') else ""} \
      ~{if defined(outputOutputSummary) then ("--output-summary " +  '"' + outputOutputSummary + '"') else ""} \
      ~{if defined(outputOutputKmErResults) then ("--output-kmer-results " +  '"' + outputOutputKmErResults + '"') else ""} \
      ~{if defined(outputOutputSimpleSummary) then ("--output-simple-summary " +  '"' + outputOutputSimpleSummary + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--json" false="" jsonJson} \
      ~{if defined(minMinKmErFreq) then ("--min-kmer-freq " +  '"' + minMinKmErFreq + '"') else ""} \
      ~{if defined(maxMaxKmErFreq) then ("--max-kmer-freq " +  '"' + maxMaxKmErFreq + '"') else ""} \
      ~{if defined(lowLowCovDepthFreq) then ("--low-cov-depth-freq " +  '"' + lowLowCovDepthFreq + '"') else ""} \
      ~{if defined(maxMaxMissingKmErs) then ("--max-missing-kmers " +  '"' + maxMaxMissingKmErs + '"') else ""} \
      ~{if defined(minMinAmbiguousKmErs) then ("--min-ambiguous-kmers " +  '"' + minMinAmbiguousKmErs + '"') else ""} \
      ~{if defined(lowLowCovWarning) then ("--low-cov-warning " +  '"' + lowLowCovWarning + '"') else ""} \
      ~{if defined(maxMaxIntermediateKmErs) then ("--max-intermediate-kmers " +  '"' + maxMaxIntermediateKmErs + '"') else ""} \
      ~{if defined(maxMaxDegenerateKmErs) then ("--max-degenerate-kmers " +  '"' + maxMaxDegenerateKmErs + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}