version 1.0

task Anvideletecollection {
  input {
    String? profile_db
    String? collection_name
    Boolean? list_collections
  }
  command <<<
    anvi_delete_collection \
      ~{if defined(profile_db) then ("--profile-db " +  '"' + profile_db + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if (list_collections) then "--list-collections" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    profile_db: "Anvi'o profile database"
    collection_name: "Collection name."
    list_collections: "Show available collections and exit."
  }
  output {
    File out_stdout = stdout()
  }
}