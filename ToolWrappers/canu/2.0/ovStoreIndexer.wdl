version 1.0

task OvStoreIndexer {
  input {
    File? path_overlap_store
    File? path_sequence_store
    File? path_ovstoreconfig_configuration
    Boolean? delete
  }
  command <<<
    ovStoreIndexer \
      ~{if defined(path_overlap_store) then ("-O " +  '"' + path_overlap_store + '"') else ""} \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(path_ovstoreconfig_configuration) then ("-C " +  '"' + path_ovstoreconfig_configuration + '"') else ""} \
      ~{if (delete) then "-delete" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_overlap_store: "path to overlap store to create"
    path_sequence_store: "path to sequence store"
    path_ovstoreconfig_configuration: "path to ovStoreConfig configuration file"
    delete: "remove intermediate files when the index is\\nsuccessfully created"
  }
  output {
    File out_stdout = stdout()
  }
}