version 1.0

task Gnuplot {
  command <<<
    gnuplot
  >>>
  output {
    File out_stdout = stdout()
  }
}