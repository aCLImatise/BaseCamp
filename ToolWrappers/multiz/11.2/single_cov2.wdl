version 1.0

task SingleCov2 {
  command <<<
    single_cov2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}