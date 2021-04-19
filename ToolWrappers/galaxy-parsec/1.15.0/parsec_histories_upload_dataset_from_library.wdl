version 1.0

task ParsecHistoriesUploadDatasetFromLibrary {
  input {
    String lib_dataset_id
  }
  command <<<
    parsec histories upload_dataset_from_library \
      ~{lib_dataset_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    lib_dataset_id: "Upload a dataset into the history from a library. Requires the library"
  }
  output {
    File out_stdout = stdout()
  }
}