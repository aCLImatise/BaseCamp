version 1.0

task Bamutils {
  input {
    String var_command
  }
  command <<<
    bamutils \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
}