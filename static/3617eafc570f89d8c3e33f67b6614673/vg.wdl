version 1.0

task Vg {
  input {
    String var_command
  }
  command <<<
    vg \
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