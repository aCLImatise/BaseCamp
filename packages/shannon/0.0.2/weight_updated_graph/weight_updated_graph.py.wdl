version 1.0

task WeightUpdatedGraphpy {
  command <<<
    weight_updated_graph_py
  >>>
  output {
    File out_stdout = stdout()
  }
}