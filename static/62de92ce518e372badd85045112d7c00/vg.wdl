version 1.0

task Vg {
  input {
    String var_command
  }
  command <<<
    vg \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
}