version 1.0

task FsnvizNo {
  input {
    String fsn_viz
    String var_command
    String? args
  }
  command <<<
    fsnviz no_ \
      ~{fsn_viz} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    fsn_viz: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}