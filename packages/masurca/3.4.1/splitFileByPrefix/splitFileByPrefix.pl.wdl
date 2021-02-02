version 1.0

task SplitFileByPrefixpl {
  command <<<
    splitFileByPrefix_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}