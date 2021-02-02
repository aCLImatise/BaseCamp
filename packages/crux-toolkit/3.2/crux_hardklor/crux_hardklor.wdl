version 1.0

task CruxHardklor {
  command <<<
    crux hardklor
  >>>
  output {
    File out_stdout = stdout()
  }
}