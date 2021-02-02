version 1.0

task SplitFao {
  command <<<
    split_fa_o
  >>>
  output {
    File out_stdout = stdout()
  }
}