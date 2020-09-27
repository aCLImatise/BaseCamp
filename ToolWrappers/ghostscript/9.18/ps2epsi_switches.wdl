version 1.0

task Ps2epsiSwitches {
  command <<<
    ps2epsi switches
  >>>
  output {
    File out_stdout = stdout()
  }
}