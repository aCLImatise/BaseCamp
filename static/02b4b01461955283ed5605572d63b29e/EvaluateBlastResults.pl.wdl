version 1.0

task EvaluateBlastResultspl {
  command <<<
    EvaluateBlastResults_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}