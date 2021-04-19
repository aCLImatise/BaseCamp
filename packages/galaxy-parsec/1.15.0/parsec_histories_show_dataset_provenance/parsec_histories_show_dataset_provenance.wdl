version 1.0

task ParsecHistoriesShowDatasetProvenance {
  input {
    Boolean? follow
    String dataset_id
  }
  command <<<
    parsec histories show_dataset_provenance \
      ~{dataset_id} \
      ~{if (follow) then "--follow" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    follow: "If ``True``, recursively fetch dataset provenance information\\nfor all inputs and their inputs, etc."
    dataset_id: "Get details related to how dataset was created (``id``, ``job_id``,"
  }
  output {
    File out_stdout = stdout()
  }
}