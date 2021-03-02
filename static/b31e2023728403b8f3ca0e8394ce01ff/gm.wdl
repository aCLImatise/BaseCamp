version 1.0

task Gm {
  input {
    String var_command
  }
  command <<<
    gm \
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