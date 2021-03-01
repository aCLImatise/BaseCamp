version 1.0

task FcCtgLinkAnalysispy {
  command <<<
    fc_ctg_link_analysis_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}