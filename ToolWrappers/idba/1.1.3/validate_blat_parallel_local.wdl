version 1.0

task ValidateBlatParallelLocal {
  command <<<
    validate_blat_parallel_local
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}