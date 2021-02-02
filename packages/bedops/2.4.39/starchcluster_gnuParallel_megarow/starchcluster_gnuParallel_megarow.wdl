version 1.0

task StarchclusterGnuParallelmegarow {
  command <<<
    starchcluster_gnuParallel_megarow
  >>>
  output {
    File out_stdout = stdout()
  }
}