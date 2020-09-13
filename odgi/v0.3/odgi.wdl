version 1.0

task Odgi {
  input {
    String var_command
  }
  command <<<
    odgi \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}