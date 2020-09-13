version 1.0

task HeatmapR {
  command <<<
    heatmap_R
  >>>
  output {
    File out_stdout = stdout()
  }
}