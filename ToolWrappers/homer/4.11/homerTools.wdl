version 1.0

task HomerTools {
  input {
    String var_command
  }
  command <<<
    homerTools \
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