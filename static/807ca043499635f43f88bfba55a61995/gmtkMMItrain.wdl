version 1.0

task GmtkMMItrain {
  command <<<
    gmtkMMItrain
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}