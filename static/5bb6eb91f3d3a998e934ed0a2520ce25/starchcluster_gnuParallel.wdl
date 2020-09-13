version 1.0

task StarchclusterGnuParallel {
  command <<<
    starchcluster_gnuParallel
  >>>
  output {
    File out_stdout = stdout()
  }
}