version 1.0

task HeatmapR {
  command <<<
    heatmap_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}