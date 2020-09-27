version 1.0

task TestHeatmappl {
  command <<<
    test_Heatmap_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}