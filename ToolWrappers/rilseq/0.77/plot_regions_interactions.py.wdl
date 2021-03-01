version 1.0

task PlotRegionsInteractionspy {
  command <<<
    plot_regions_interactions_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}