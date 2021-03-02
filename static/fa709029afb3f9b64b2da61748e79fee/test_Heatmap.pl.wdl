version 1.0

task TestHeatmappl {
  command <<<
    test_Heatmap_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}