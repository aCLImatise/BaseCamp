version 1.0

task Tstesummarytxt {
  command <<<
    tst_esummary_txt
  >>>
  output {
    File out_stdout = stdout()
  }
}