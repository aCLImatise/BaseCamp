version 1.0

task Dng {
  input {
    String var_command
  }
  command <<<
    dng \
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