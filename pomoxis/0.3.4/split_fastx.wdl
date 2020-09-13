version 1.0

task SplitFastx {
  command <<<
    split_fastx
  >>>
  output {
    File out_stdout = stdout()
  }
}