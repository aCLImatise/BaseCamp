version 1.0

task MakePairedOutput2UNEQUALfilespl {
  command <<<
    makePairedOutput2UNEQUALfiles_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}