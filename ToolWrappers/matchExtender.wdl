version 1.0

task MatchExtender {
  command <<<
    matchExtender
  >>>
  output {
    File out_stdout = stdout()
  }
}