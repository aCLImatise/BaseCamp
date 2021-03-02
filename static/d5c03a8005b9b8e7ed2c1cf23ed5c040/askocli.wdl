version 1.0

task Askocli {
  input {
    String var_command
    String? args
  }
  command <<<
    askocli \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}