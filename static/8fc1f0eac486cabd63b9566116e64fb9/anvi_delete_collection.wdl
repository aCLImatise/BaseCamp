version 1.0

task AnviDeleteCollection {
  input {
    String? profile_db
    String? collection_name
    Boolean? list_collections
  }
  command <<<
    anvi-delete-collection \
      ~{if defined(profile_db) then ("--profile-db " +  '"' + profile_db + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{true="--list-collections" false="" list_collections}
  >>>
  parameter_meta {
    profile_db: "Anvi'o profile database"
    collection_name: "Collection name."
    list_collections: "Show available collections and exit."
  }
}