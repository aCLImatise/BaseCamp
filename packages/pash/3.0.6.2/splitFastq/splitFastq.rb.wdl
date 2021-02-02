version 1.0

task SplitFastqrb {
  command <<<
    splitFastq_rb
  >>>
  output {
    File out_stdout = stdout()
  }
}