version 1.0

task WeightUpdatedGraphpy {
  command <<<
    weight_updated_graph_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}