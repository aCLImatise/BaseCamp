version 1.0

task Ps2epsiGs {
  command <<<
    ps2epsi gs
  >>>
  output {
    File out_stdout = stdout()
  }
}