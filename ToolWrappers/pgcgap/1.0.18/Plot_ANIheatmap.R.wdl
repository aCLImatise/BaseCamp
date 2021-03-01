version 1.0

task PlotANIheatmapR {
  command <<<
    Plot_ANIheatmap_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}