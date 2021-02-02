version 1.0

task SelectForRandfoldplorig {
  command <<<
    select_for_randfold_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}