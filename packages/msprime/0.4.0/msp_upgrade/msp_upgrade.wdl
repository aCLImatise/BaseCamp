version 1.0

task MspUpgrade {
  command <<<
    msp upgrade
  >>>
  output {
    File out_stdout = stdout()
  }
}