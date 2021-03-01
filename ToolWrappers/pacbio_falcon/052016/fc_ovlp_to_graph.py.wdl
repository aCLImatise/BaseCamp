version 1.0

task FcOvlpToGraphpy {
  command <<<
    fc_ovlp_to_graph_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}