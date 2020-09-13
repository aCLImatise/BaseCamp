version 1.0

task GmtkDMLPtrain {
  command <<<
    gmtkDMLPtrain
  >>>
  output {
    File out_stdout = stdout()
  }
}