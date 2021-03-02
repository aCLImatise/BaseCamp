version 1.0

task MakePairedOutputpl {
  command <<<
    makePairedOutput_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}