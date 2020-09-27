version 1.0

task Ps2epsiFile2ps {
  command <<<
    ps2epsi file2_ps
  >>>
  output {
    File out_stdout = stdout()
  }
}