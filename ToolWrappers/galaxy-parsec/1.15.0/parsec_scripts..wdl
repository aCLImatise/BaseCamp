version 1.0

task ParsecScripts {
  input {
    String parsec
    String var_command
    String? args
  }
  command <<<
    parsec scripts_ \
      ~{parsec} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    parsec: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}