version 1.0

task Signalmakerr {
  command <<<
    signalmaker_r
  >>>
  output {
    File out_stdout = stdout()
  }
}