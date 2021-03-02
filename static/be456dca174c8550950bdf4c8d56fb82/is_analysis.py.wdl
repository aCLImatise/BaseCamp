version 1.0

task IsAnalysispy {
  command <<<
    is_analysis_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}