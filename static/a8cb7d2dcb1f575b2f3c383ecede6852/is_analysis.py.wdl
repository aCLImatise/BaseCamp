version 1.0

task IsAnalysispy {
  command <<<
    is_analysis_py
  >>>
  output {
    File out_stdout = stdout()
  }
}