version 1.0

task GmtkTime {
  command <<<
    gmtkTime
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}