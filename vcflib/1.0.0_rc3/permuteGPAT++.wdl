version 1.0

task PermuteGPAT {
  command <<<
    permuteGPAT__
  >>>
  output {
    File out_stdout = stdout()
  }
}