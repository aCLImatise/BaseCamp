version 1.0

task AnviScriptAddDefaultCollection {
  input {
    String panPanOrProfileDb
    String contigsContigsDb
    String binBinId
    String collectionCollectionName
  }
  command <<<
    anvi-script-add-default-collection \
      ~{if defined(panPanOrProfileDb) then ("--pan-or-profile-db " +  '"' + panPanOrProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""}
  >>>
}