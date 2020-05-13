version 1.0

task AnviDeleteCollection {
  input {
    String profileProfileDb
    String collectionCollectionName
    Boolean listListCollections
  }
  command <<<
    anvi-delete-collection \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{true="--list-collections" false="" listListCollections}
  >>>
}