version 1.0

task GhostTreeExtensionsARGS {
  input {
    String ghost_tree
    String extensions
    String var_command
    String? args
  }
  command <<<
    ghost-tree extensions ARGS \
      ~{ghost_tree} \
      ~{extensions} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    ghost_tree: ""
    extensions: ""
    var_command: ""
    args: ""
  }
}