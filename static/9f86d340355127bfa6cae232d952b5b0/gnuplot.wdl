version 1.0

task Gnuplot {
  command <<<
    gnuplot
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuplot:5.2.3"
  }
  output {
    File out_stdout = stdout()
  }
}