version 1.0

task ParallelBlato {
  command <<<
    parallel_blat_o
  >>>
  output {
    File out_stdout = stdout()
  }
}