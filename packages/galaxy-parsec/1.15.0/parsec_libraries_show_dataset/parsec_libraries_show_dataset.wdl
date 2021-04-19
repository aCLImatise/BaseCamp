version 1.0

task ParsecLibrariesShowDataset {
  input {
    String library_id
    String dataset_id
  }
  command <<<
    parsec libraries show_dataset \
      ~{library_id} \
      ~{dataset_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    library_id: ""
    dataset_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}