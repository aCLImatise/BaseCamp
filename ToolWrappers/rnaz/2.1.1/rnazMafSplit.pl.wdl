version 1.0

task RnazMafSplitpl {
  command <<<
    rnazMafSplit_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}