version 1.0

task DetectionCall {
  command <<<
    detectionCall
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}