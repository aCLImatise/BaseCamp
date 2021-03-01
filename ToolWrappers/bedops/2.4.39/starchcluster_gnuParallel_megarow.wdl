version 1.0

task StarchclusterGnuParallelmegarow {
  command <<<
    starchcluster_gnuParallel_megarow
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}