version 1.0

task Jasmine {
  input {
    String var_command
    String line
  }
  command <<<
    jasmine \
      ~{var_command} \
      ~{line}
  >>>
  parameter_meta {
    var_command: ""
    line: ""
  }
  output {
    File out_stdout = stdout()
  }
}