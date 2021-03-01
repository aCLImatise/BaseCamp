version 1.0

task GmtkParmConvert {
  command <<<
    gmtkParmConvert
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}