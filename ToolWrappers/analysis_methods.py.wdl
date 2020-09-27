version 1.0

task AnalysisMethodspy {
  command <<<
    analysis_methods_py
  >>>
  output {
    File out_stdout = stdout()
  }
}