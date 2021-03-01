version 1.0

task AnalyzePositionSSAKEpl {
  command <<<
    analyzePositionSSAKE_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}