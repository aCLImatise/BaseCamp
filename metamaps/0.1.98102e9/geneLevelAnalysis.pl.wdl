version 1.0

task GeneLevelAnalysispl {
  command <<<
    geneLevelAnalysis_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}