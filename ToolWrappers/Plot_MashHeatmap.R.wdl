version 1.0

task PlotMashHeatmapR {
  command <<<
    Plot_MashHeatmap_R
  >>>
  output {
    File out_stdout = stdout()
  }
}