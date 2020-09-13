version 1.0

task Heatmapr {
  command <<<
    heatmap_r
  >>>
  output {
    File out_stdout = stdout()
  }
}