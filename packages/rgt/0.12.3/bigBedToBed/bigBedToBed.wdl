version 1.0

task BigBedToBed {
  command <<<
    bigBedToBed
  >>>
  output {
    File out_stdout = stdout()
  }
}