version 1.0

task Matlock {
  input {
    String var_command
  }
  command <<<
    matlock \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}