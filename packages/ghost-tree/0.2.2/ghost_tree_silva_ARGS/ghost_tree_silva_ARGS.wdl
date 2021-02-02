version 1.0

task GhosttreeSilvaARGS {
  input {
    String ghost_tree
    String silva
    String var_command
    String? args
  }
  command <<<
    ghost_tree silva ARGS \
      ~{ghost_tree} \
      ~{silva} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    ghost_tree: ""
    silva: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}