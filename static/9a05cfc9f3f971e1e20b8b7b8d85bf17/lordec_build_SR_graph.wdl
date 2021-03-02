version 1.0

task LordecbuildSRgraph {
  command <<<
    lordec_build_SR_graph
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}