version 1.0

task ParsecLibrariesGetDatasetPermissions {
  input {
    String dataset_id
  }
  command <<<
    parsec libraries get_dataset_permissions \
      ~{dataset_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    dataset_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}