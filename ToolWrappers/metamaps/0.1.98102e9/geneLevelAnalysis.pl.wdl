version 1.0

task GeneLevelAnalysispl {
  command <<<
    geneLevelAnalysis_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}