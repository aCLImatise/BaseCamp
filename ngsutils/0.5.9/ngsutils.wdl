version 1.0

task Ngsutils {
  input {
    String var_command
  }
  command <<<
    ngsutils \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
}