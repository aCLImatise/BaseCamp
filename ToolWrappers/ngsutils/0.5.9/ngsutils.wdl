version 1.0

task Ngsutils {
  input {
    String var_command
  }
  command <<<
    ngsutils \
      ~{var_command}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}