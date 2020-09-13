version 1.0

task Xyplot {
  command <<<
    xy_plot
  >>>
  output {
    File out_stdout = stdout()
  }
}