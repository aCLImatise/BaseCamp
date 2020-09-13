version 1.0

task MakePairedOutput2EQUALfilespl {
  command <<<
    makePairedOutput2EQUALfiles_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}