version 1.0

task Ps2ps {
  command <<<
    ps2ps
  >>>
  output {
    File out_stdout = stdout()
  }
}