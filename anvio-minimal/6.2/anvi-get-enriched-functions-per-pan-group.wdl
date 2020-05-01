version 1.0

task AnviGetEnrichedFunctionsPerPanGroup {
  input {
    String panPanDb
    String genomesGenomesStorage
    Boolean listListAnnotationSources
    Boolean includeIncludeGcIdentityAsFunction
    File outputOutputFile
    File functionalFunctionalOccurrenceTableOutput
    Boolean excludeExcludeUngrouped
    Boolean justJustDoIt
  }
  command <<<
    anvi-get-enriched-functions-per-pan-group \
      ~{if defined(panPanDb) then ("--pan-db " +  '"' + panPanDb + '"') else ""} \
      ~{if defined(genomesGenomesStorage) then ("--genomes-storage " +  '"' + genomesGenomesStorage + '"') else ""} \
      ~{true="--list-annotation-sources" false="" listListAnnotationSources} \
      ~{true="--include-gc-identity-as-function" false="" includeIncludeGcIdentityAsFunction} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(functionalFunctionalOccurrenceTableOutput) then ("--functional-occurrence-table-output " +  '"' + functionalFunctionalOccurrenceTableOutput + '"') else ""} \
      ~{true="--exclude-ungrouped" false="" excludeExcludeUngrouped} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}