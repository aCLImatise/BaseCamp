version 1.0

task TBLASTNHitChainerpl {
  command <<<
    TBLASTN_hit_chainer_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}