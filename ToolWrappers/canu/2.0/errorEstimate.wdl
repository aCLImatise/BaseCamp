version 1.0

task ErrorEstimate {
  command <<<
    errorEstimate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}