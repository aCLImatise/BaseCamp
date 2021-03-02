version 1.0

task HavanaAnalysispy {
  command <<<
    havana_analysis_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}