version 1.0

task PlotRegionsInteractionspy {
  command <<<
    plot_regions_interactions_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/rilseq:0.81--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}