version 1.0

task SplitWigglepl {
  command <<<
    split_wiggle_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}