version 1.0

task EvaluateBlastResultspl {
  command <<<
    EvaluateBlastResults_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}