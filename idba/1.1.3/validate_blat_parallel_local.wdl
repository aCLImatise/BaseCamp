version 1.0

task ValidateBlatParallelLocal {
  command <<<
    validate_blat_parallel_local
  >>>
  output {
    File out_stdout = stdout()
  }
}