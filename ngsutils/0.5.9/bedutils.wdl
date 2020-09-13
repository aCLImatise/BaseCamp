version 1.0

task Bedutils {
  input {
    String var_command
  }
  command <<<
    bedutils \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}