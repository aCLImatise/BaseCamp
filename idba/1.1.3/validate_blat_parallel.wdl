version 1.0

task ValidateBlatParallel {
  command <<<
    validate_blat_parallel
  >>>
  output {
    File out_stdout = stdout()
  }
}