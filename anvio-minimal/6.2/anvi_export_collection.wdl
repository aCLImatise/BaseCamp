version 1.0

task AnviExportCollection {
  input {
    String panPanOrProfileDb
    String collectionCollectionName
    File outputOutputFilePrefix
    Boolean listListCollections
    Boolean includeIncludeUnbinned
  }
  command <<<
    anvi-export-collection \
      ~{if defined(panPanOrProfileDb) then ("--pan-or-profile-db " +  '"' + panPanOrProfileDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(outputOutputFilePrefix) then ("--output-file-prefix " +  '"' + outputOutputFilePrefix + '"') else ""} \
      ~{true="--list-collections" false="" listListCollections} \
      ~{true="--include-unbinned" false="" includeIncludeUnbinned}
  >>>
}