version 1.0

task Gtfutils {
  input {
    String var_command
  }
  command <<<
    gtfutils \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}