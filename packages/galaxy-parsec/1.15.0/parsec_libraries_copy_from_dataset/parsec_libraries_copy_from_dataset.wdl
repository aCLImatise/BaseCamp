version 1.0

task ParsecLibrariesCopyFromDataset {
  input {
    Directory? folder_id
    String? message
    String library_id
    String dataset_id
  }
  command <<<
    parsec libraries copy_from_dataset \
      ~{library_id} \
      ~{dataset_id} \
      ~{if defined(folder_id) then ("--folder_id " +  '"' + folder_id + '"') else ""} \
      ~{if defined(message) then ("--message " +  '"' + message + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    folder_id: "id of the folder where to place the uploaded files. If not\\nprovided, the root folder will be used"
    message: "message for copying action"
    library_id: ""
    dataset_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}