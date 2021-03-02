version 1.0

task GmtkJT {
  command <<<
    gmtkJT
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}