version 1.0

task PslRecalcMatch {
  command <<<
    pslRecalcMatch
  >>>
  output {
    File out_stdout = stdout()
  }
}