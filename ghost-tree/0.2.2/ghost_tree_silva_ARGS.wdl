version 1.0

task GhostTreeSilvaARGS {
  input {
    String ghost_tree
    String silva
    String var_command
    String? args
  }
  command <<<
    ghost-tree silva ARGS \
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
}