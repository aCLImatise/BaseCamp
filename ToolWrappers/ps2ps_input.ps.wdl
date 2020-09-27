version 1.0

task Ps2psInputps {
  command <<<
    ps2ps input_ps
  >>>
  output {
    File out_stdout = stdout()
  }
}