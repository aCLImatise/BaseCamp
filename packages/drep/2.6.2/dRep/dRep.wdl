version 1.0

task DRep {
  command <<<
    dRep
  >>>
  output {
    File out_stdout = stdout()
  }
}