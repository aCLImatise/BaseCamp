version 1.0

task Res2Rpl {
  command <<<
    res2R_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}