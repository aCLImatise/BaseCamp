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
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    profile_db: "Anvi'o profile database (default: None)"
    collection_name: "Collection name. (default: None)"
    list_collections: "Show available collections and exit. (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}