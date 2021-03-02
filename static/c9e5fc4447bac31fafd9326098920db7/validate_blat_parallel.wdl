version 1.0

task ValidateBlatParallel {
  command <<<
    validate_blat_parallel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}