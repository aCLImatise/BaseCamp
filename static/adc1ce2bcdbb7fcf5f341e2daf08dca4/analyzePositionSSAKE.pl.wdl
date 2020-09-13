version 1.0

task AnalyzePositionSSAKEpl {
  command <<<
    analyzePositionSSAKE_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}