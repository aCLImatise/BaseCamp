version 1.0

task ParsecLibrariesGetLibraryPermissions {
  input {
    String library_id
  }
  command <<<
    parsec libraries get_library_permissions \
      ~{library_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    library_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}