version 1.0

task BigBedSummary {
  command <<<
    bigBedSummary
  >>>
  output {
    File out_stdout = stdout()
  }
}