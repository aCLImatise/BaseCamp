version 1.0

task ParsecToolshedRepositoriesShowRepository {
  input {
    String toolshed_id
  }
  command <<<
    parsec toolshed_repositories show_repository \
      ~{toolshed_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    toolshed_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}