version 1.0

task HavanaAnalysispy {
  command <<<
    havana_analysis_py
  >>>
  output {
    File out_stdout = stdout()
  }
}