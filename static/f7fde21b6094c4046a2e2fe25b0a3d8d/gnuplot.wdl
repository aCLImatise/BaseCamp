version 1.0

task Gnuplot {
  command <<<
    gnuplot
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}