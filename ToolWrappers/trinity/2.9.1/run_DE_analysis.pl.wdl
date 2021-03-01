version 1.0

task RunDEAnalysispl {
  command <<<
    run_DE_analysis_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}