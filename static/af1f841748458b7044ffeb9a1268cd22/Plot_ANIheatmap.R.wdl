version 1.0

task PlotANIheatmapR {
  command <<<
    Plot_ANIheatmap_R
  >>>
  output {
    File out_stdout = stdout()
  }
}