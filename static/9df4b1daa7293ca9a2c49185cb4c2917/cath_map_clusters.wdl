version 1.0

task CathMapClusters {
  input {
    Boolean vV
    File mapMapFromClustMembFile
    Boolean readReadBatchesFromInput
    String minMinEquivDomOl
    String minMinEquivClustOl
    String appendAppendBatchId
    File outputOutputToFile
    File summariseSummariseToFile
    Boolean printPrintEntryResults
    Boolean sortingSortingHelp
    String? inputInputFile
  }
  command <<<
    cath-map-clusters \
      ~{inputInputFile} \
      ~{true="-v" false="" vV} \
      ~{if defined(mapMapFromClustMembFile) then ("--map-from-clustmemb-file " +  '"' + mapMapFromClustMembFile + '"') else ""} \
      ~{true="--read-batches-from-input" false="" readReadBatchesFromInput} \
      ~{if defined(minMinEquivDomOl) then ("--min_equiv_dom_ol " +  '"' + minMinEquivDomOl + '"') else ""} \
      ~{if defined(minMinEquivClustOl) then ("--min_equiv_clust_ol " +  '"' + minMinEquivClustOl + '"') else ""} \
      ~{if defined(appendAppendBatchId) then ("--append-batch-id " +  '"' + appendAppendBatchId + '"') else ""} \
      ~{if defined(outputOutputToFile) then ("--output-to-file " +  '"' + outputOutputToFile + '"') else ""} \
      ~{if defined(summariseSummariseToFile) then ("--summarise-to-file " +  '"' + summariseSummariseToFile + '"') else ""} \
      ~{true="--print-entry-results" false="" printPrintEntryResults} \
      ~{true="--sorting-help" false="" sortingSortingHelp}
  >>>
}