version 1.0

task ParsecHistoriesShowDataset {
  input {
    String history_id
    String dataset_id
  }
  command <<<
    parsec histories show_dataset \
      ~{history_id} \
      ~{dataset_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    history_id: ""
    dataset_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}