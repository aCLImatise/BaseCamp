version 1.0

task RunDEAnalysispl {
  command <<<
    run_DE_analysis_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}