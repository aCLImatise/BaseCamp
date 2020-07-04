version 1.0

task Hotspot3d {
  input {
    String var_command
  }
  command <<<
    hotspot3d \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
}