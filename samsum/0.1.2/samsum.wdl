version 1.0

task Samsum {
  input {
    String? var_command
  }
  command <<<
    samsum \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
}