version 1.0

task SplitFqo {
  command <<<
    split_fq_o
  >>>
  output {
    File out_stdout = stdout()
  }
}