version 1.0

task OvStoreIndexer {
  input {
    String? path_overlap_store
    String? path_sequence_store
    String? path_ovstoreconfig_file
    Boolean? delete
  }
  command <<<
    ovStoreIndexer \
      ~{if defined(path_overlap_store) then ("-O " +  '"' + path_overlap_store + '"') else ""} \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(path_ovstoreconfig_file) then ("-C " +  '"' + path_ovstoreconfig_file + '"') else ""} \
      ~{true="-delete" false="" delete}
  >>>
  parameter_meta {
    path_overlap_store: "path to overlap store to create"
    path_sequence_store: "path to sequence store"
    path_ovstoreconfig_file: "path to ovStoreConfig configuration file"
    delete: "remove intermediate files when the index is successfully created"
  }
}