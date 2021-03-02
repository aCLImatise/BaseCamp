version 1.0

task StarchclusterGnuParallel {
  command <<<
    starchcluster_gnuParallel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}