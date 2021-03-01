version 1.0

task ErrorCorrection {
  command <<<
    ErrorCorrection
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}