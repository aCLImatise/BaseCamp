version 1.0

task Cutplbak {
  command <<<
    cut_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}