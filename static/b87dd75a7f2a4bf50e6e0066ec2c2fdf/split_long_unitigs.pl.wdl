version 1.0

task SplitLongUnitigspl {
  command <<<
    split_long_unitigs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}