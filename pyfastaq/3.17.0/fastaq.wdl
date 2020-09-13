version 1.0

task Fastaq {
  input {
    String var_command
  }
  command <<<
    fastaq \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}