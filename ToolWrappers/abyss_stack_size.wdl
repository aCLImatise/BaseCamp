version 1.0

task Abyssstacksize {
  input {
    String stack_size
    String var_command
  }
  command <<<
    abyss_stack_size \
      ~{stack_size} \
      ~{var_command}
  >>>
  parameter_meta {
    stack_size: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}