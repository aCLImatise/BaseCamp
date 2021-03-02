version 1.0

task GmtkPrint {
  command <<<
    gmtkPrint
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}