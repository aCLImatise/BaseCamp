version 1.0

task BigWigInfo {
  command <<<
    bigWigInfo
  >>>
  output {
    File out_stdout = stdout()
  }
}