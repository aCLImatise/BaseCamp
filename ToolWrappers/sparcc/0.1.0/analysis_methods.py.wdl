version 1.0

task AnalysisMethodspy {
  command <<<
    analysis_methods_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}