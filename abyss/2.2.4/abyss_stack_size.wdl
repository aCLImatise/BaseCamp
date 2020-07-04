version 1.0

task AbyssStackSize {
  input {
    String stack_size
    String var_command
  }
  command <<<
    abyss-stack-size \
      ~{stack_size} \
      ~{var_command}
  >>>
  parameter_meta {
    stack_size: ""
    var_command: ""
  }
}