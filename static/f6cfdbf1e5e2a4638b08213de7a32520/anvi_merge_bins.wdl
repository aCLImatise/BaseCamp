version 1.0

task AnviMergeBins {
  input {
    String panPanOrProfileDb
    String collectionCollectionName
    String bB
    String bB
    Boolean listListCollections
    Boolean listListBins
  }
  command <<<
    anvi-merge-bins \
      ~{if defined(panPanOrProfileDb) then ("--pan-or-profile-db " +  '"' + panPanOrProfileDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{true="--list-collections" false="" listListCollections} \
      ~{true="--list-bins" false="" listListBins}
  >>>
}