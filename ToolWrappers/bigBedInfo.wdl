version 1.0

task BigBedInfo {
  command <<<
    bigBedInfo
  >>>
  output {
    File out_stdout = stdout()
  }
}