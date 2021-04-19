version 1.0

task ParsecToolsRunTool {
  input {
    String history_id
    String tool_id
    String tool_inputs
  }
  command <<<
    parsec tools run_tool \
      ~{history_id} \
      ~{tool_id} \
      ~{tool_inputs}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    history_id: ""
    tool_id: ""
    tool_inputs: ""
  }
  output {
    File out_stdout = stdout()
  }
}