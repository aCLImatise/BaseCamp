version 1.0

task KillBadKUnitigs {
  command <<<
    killBadKUnitigs
  >>>
  output {
    File out_stdout = stdout()
  }
}