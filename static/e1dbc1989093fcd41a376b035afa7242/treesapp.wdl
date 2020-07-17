version 1.0

task Treesapp {
  input {
    String? var_command
  }
  command <<<
    treesapp \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
}