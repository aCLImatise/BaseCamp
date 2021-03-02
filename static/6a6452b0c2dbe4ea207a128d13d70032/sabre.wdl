version 1.0

task Sabre {
  input {
    String var_command
  }
  command <<<
    sabre \
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