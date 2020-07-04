version 1.0

task Drive {
  input {
    String var_command
  }
  command <<<
    drive \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
}