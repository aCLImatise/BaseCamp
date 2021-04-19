version 1.0

task ParsecToolsRequirements {
  input {
    String tool_id
  }
  command <<<
    parsec tools requirements \
      ~{tool_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    tool_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}