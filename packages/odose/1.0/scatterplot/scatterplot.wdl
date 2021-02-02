version 1.0

task Scatterplot {
  command <<<
    scatterplot
  >>>
  output {
    File out_stdout = stdout()
  }
}