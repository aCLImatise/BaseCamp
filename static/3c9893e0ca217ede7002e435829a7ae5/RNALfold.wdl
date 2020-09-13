version 1.0

task RNALfold {
  command <<<
    RNALfold
  >>>
  output {
    File out_stdout = stdout()
  }
}