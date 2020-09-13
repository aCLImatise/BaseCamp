version 1.0

task Trnanalysis {
  command <<<
    trnanalysis
  >>>
  output {
    File out_stdout = stdout()
  }
}