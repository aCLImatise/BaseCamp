version 1.0

task StarchclusterGnuParalleltypical {
  command <<<
    starchcluster_gnuParallel_typical
  >>>
  output {
    File out_stdout = stdout()
  }
}