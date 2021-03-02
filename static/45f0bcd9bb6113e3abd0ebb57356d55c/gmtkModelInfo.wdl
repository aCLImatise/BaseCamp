version 1.0

task GmtkModelInfo {
  command <<<
    gmtkModelInfo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}