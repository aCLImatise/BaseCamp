version 1.0

task Ps2ps2Inputps {
  command <<<
    ps2ps2 input_ps
  >>>
  output {
    File out_stdout = stdout()
  }
}