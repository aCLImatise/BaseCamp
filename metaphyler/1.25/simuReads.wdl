version 1.0

task SimuReads {
  command <<<
    simuReads
  >>>
  output {
    File out_stdout = stdout()
  }
}