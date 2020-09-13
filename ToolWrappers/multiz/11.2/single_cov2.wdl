version 1.0

task SingleCov2 {
  command <<<
    single_cov2
  >>>
  output {
    File out_stdout = stdout()
  }
}