version 1.0

task ParsecHistoriesCreateDatasetCollection {
  input {
    String collection_description
  }
  command <<<
    parsec histories create_dataset_collection \
      ~{collection_description}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    collection_description: "Create a new dataset collection"
  }
  output {
    File out_stdout = stdout()
  }
}