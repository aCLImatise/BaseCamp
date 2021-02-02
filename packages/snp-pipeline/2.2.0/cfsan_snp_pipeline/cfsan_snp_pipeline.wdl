version 1.0

task CfsanSnpPipeline {
  command <<<
    cfsan_snp_pipeline
  >>>
  output {
    File out_stdout = stdout()
  }
}