version 1.0

task GetConfidenceDensity {
  command <<<
    getConfidenceDensity
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}