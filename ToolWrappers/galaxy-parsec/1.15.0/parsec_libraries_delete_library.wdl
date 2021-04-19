version 1.0

task ParsecLibrariesDeleteLibrary {
  input {
    String deleted_dot
  }
  command <<<
    parsec libraries delete_library \
      ~{deleted_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    deleted_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}