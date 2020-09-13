version 1.0

task Stagdrawtreepl {
  command <<<
    stag_drawtree_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}