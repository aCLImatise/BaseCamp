version 1.0

task ParsecLibrariesShowFolder {
  input {
    String library_id
    String folder_id
  }
  command <<<
    parsec libraries show_folder \
      ~{library_id} \
      ~{folder_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    library_id: ""
    folder_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}