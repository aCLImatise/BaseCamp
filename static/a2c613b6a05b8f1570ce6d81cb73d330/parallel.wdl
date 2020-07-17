version 1.0

task Parallel {
  input {
    String? var_command
    String? arguments
  }
  command <<<
    parallel \
      ~{var_command} \
      ~{arguments}
  >>>
  parameter_meta {
    var_command: ""
    arguments: ""
  }
}