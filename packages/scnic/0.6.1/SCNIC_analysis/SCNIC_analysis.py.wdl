version 1.0

task SCNICAnalysispy {
  command <<<
    SCNIC_analysis_py
  >>>
  output {
    File out_stdout = stdout()
  }
}