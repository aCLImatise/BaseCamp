version 1.0

task GmtkEMtrain {
  command <<<
    gmtkEMtrain
  >>>
  output {
    File out_stdout = stdout()
  }
}