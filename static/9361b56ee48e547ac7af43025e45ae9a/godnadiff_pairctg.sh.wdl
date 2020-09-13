version 1.0

task GodnadiffPairctgsh {
  command <<<
    godnadiff_pairctg_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}