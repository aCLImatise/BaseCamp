version 1.0

task Sickle {
  input {
    String var_command
  }
  command <<<
    sickle \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}