version 1.0

task GhosttreeExtensionsARGS {
  input {
    String ghost_tree
    String extensions
    String var_command
    String? args
  }
  command <<<
    ghost_tree extensions ARGS \
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
  output {
    File out_stdout = stdout()
  }
}