version 1.0

task FcCtgLinkAnalysispy {
  command <<<
    fc_ctg_link_analysis_py
  >>>
  output {
    File out_stdout = stdout()
  }
}