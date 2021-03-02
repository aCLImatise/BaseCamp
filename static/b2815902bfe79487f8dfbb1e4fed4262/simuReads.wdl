version 1.0

task SimuReads {
  command <<<
    simuReads
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}