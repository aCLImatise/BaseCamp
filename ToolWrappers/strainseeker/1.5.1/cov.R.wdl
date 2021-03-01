version 1.0

task CovR {
  command <<<
    cov_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}