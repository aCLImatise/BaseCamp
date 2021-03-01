version 1.0

task Odgi {
  input {
    String var_command
  }
  command <<<
    odgi \
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