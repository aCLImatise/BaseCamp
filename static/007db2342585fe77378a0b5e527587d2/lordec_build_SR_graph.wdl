version 1.0

task LordecbuildSRgraph {
  command <<<
    lordec_build_SR_graph
  >>>
  output {
    File out_stdout = stdout()
  }
}