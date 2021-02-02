version 1.0

task SplitInputpl {
  command <<<
    splitInput_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}