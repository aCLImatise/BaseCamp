version 1.0

task GapShifter {
  command <<<
    gapShifter
  >>>
  output {
    File out_stdout = stdout()
  }
}