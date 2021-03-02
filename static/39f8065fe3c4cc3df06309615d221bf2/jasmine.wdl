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
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_command: ""
    line: ""
  }
  output {
    File out_stdout = stdout()
  }
}