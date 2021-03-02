version 1.0

task Heatmapr {
  command <<<
    heatmap_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}