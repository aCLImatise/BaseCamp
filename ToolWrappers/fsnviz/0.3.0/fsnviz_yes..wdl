version 1.0

task FsnvizYes {
  input {
    String fsn_viz
    String var_command
    String? args
  }
  command <<<
    fsnviz yes_ \
      ~{fsn_viz} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fsn_viz: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}