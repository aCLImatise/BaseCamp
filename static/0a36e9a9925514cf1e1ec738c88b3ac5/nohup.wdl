version 1.0

task Nohup {
  input {
    String var_command
    String? arg
  }
  command <<<
    nohup \
      ~{var_command} \
      ~{arg}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_command: ""
    arg: ""
  }
  output {
    File out_stdout = stdout()
  }
}