version 1.0

task MakePairedOutput2EQUALfilespl {
  command <<<
    makePairedOutput2EQUALfiles_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}