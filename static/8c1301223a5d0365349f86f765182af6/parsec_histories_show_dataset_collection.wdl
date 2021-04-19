version 1.0

task ParsecHistoriesShowDatasetCollection {
  input {
    String dataset_collection_id
  }
  command <<<
    parsec histories show_dataset_collection \
      ~{dataset_collection_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    dataset_collection_id: "Get details about a given history dataset collection."
  }
  output {
    File out_stdout = stdout()
  }
}