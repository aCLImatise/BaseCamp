version 1.0

task VsnpHtmlStep2Summarypy {
  command <<<
    vsnp_html_step2_summary_py
  >>>
  output {
    File out_stdout = stdout()
  }
}