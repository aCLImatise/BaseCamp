version 1.0

task VelocytoToolsARGS {
  input {
    String velo_cyto
    String tools
    String var_command
    String? args
  }
  command <<<
    velocyto tools ARGS \
      ~{velo_cyto} \
      ~{tools} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    velo_cyto: ""
    tools: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}