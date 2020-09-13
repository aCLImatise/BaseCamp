version 1.0

task GetGammaDensity {
  command <<<
    getGammaDensity
  >>>
  output {
    File out_stdout = stdout()
  }
}