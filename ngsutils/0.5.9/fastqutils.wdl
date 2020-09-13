version 1.0

task Fastqutils {
  input {
    String var_command
  }
  command <<<
    fastqutils \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}