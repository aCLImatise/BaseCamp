version 1.0

task Xyplot {
  command <<<
    xy_plot
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}