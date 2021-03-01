version 1.0

task Falconphase {
  input {
    String var_command
  }
  command <<<
    falcon_phase \
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