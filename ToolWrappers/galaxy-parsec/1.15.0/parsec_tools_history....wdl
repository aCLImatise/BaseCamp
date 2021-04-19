version 1.0

task ParsecToolsHistory {
  input {
    String parsec
    String tools
    String var_command
    String? args
  }
  command <<<
    parsec tools history___ \
      ~{parsec} \
      ~{tools} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    parsec: ""
    tools: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}