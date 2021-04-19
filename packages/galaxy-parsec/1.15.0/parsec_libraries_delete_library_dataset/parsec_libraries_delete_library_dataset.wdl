version 1.0

task ParsecLibrariesDeleteLibraryDataset {
  input {
    Boolean? purged
    String library_id
    String dataset_id
  }
  command <<<
    parsec libraries delete_library_dataset \
      ~{library_id} \
      ~{dataset_id} \
      ~{if (purged) then "--purged" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    purged: "Indicate that the dataset should be purged (permanently deleted)"
    library_id: ""
    dataset_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}