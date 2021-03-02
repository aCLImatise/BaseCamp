version 1.0

task ParallelBlato {
  command <<<
    parallel_blat_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}