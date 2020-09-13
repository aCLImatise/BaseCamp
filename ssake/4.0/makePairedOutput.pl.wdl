version 1.0

task MakePairedOutputpl {
  command <<<
    makePairedOutput_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}