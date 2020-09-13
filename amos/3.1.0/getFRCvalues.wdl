version 1.0

task GetFRCvalues {
  command <<<
    getFRCvalues
  >>>
  output {
    File out_stdout = stdout()
  }
}