version 1.0

task AnviImportCollection {
  input {
    String contigsContigsDb
    String panPanOrProfileDb
    String collectionCollectionName
    String binsBinsInfo
    Boolean contigsContigsMode
  }
  command <<<
    anvi-import-collection \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(panPanOrProfileDb) then ("--pan-or-profile-db " +  '"' + panPanOrProfileDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binsBinsInfo) then ("--bins-info " +  '"' + binsBinsInfo + '"') else ""} \
      ~{true="--contigs-mode" false="" contigsContigsMode}
  >>>
}