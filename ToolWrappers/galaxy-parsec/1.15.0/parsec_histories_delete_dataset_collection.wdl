version 1.0

task ParsecHistoriesDeleteDatasetCollection {
  input {
    String dataset_collection_id
    String options
  }
  command <<<
    parsec histories delete_dataset_collection \
      ~{dataset_collection_id} \
      ~{options}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    dataset_collection_id: "Mark corresponding dataset collection as deleted."
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}