version 1.0

task PlotHeatmapsr {
  command <<<
    plot_heatmaps_r
  >>>
  output {
    File out_stdout = stdout()
  }
}