version 1.0

task SplitLongKUnitigspl {
  command <<<
    splitLongKUnitigs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}