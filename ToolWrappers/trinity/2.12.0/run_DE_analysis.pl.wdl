version 1.0

task RunDEAnalysispl {
  command <<<
    run_DE_analysis_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/trinity:2.12.0--h5ef6573_0"
  }
  output {
    File out_stdout = stdout()
  }
}