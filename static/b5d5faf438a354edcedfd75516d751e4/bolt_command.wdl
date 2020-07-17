version 1.0

task BoltCommand {
  input {
    String? var_command
    String? arguments_dot_dot_dot
  }
  command <<<
    bolt command \
      ~{var_command} \
      ~{arguments_dot_dot_dot}
  >>>
  parameter_meta {
    var_command: ""
    arguments_dot_dot_dot: ""
  }
}