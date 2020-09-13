version 1.0

task RegtoolsVariants {
  input {
    String var_command
  }
  command <<<
    regtools variants \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}