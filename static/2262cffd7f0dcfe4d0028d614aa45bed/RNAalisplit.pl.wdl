version 1.0

task RNAalisplitpl {
  command <<<
    RNAalisplit_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}