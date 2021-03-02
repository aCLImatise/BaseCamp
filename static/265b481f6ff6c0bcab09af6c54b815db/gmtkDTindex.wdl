version 1.0

task GmtkDTindex {
  command <<<
    gmtkDTindex
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}