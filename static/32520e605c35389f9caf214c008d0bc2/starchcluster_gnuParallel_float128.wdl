version 1.0

task StarchclusterGnuParallelfloat128 {
  command <<<
    starchcluster_gnuParallel_float128
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}