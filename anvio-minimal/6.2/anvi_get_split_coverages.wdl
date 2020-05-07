version 1.0

task AnviGetSplitCoverages {
  input {
    String profileProfileDb
    String splitSplitName
    String contigsContigsDb
    String collectionCollectionName
    String binBinId
    File outputOutputFile
    Boolean listListSplits
    Boolean listListCollections
    Boolean listListBins
  }
  command <<<
    anvi-get-split-coverages \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(splitSplitName) then ("--split-name " +  '"' + splitSplitName + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--list-splits" false="" listListSplits} \
      ~{true="--list-collections" false="" listListCollections} \
      ~{true="--list-bins" false="" listListBins}
  >>>
}