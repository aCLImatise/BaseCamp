version 1.0

task AnviSearchFunctions {
  input {
    String contigsContigsDb
    String panPanDb
    String genomesGenomesStorage
    Boolean listListAnnotationSources
    File outputOutputFile
    File fullFullReport
    Boolean includeIncludeSequences
    Boolean verboseVerbose
  }
  command <<<
    anvi-search-functions \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(panPanDb) then ("--pan-db " +  '"' + panPanDb + '"') else ""} \
      ~{if defined(genomesGenomesStorage) then ("--genomes-storage " +  '"' + genomesGenomesStorage + '"') else ""} \
      ~{true="--list-annotation-sources" false="" listListAnnotationSources} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(fullFullReport) then ("--full-report " +  '"' + fullFullReport + '"') else ""} \
      ~{true="--include-sequences" false="" includeIncludeSequences} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}