version 1.0

task Nanopolish {
  input {
    String? var_command
  }
  command <<<
    nanopolish \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
}