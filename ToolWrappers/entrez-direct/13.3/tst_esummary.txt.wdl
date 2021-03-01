version 1.0

task Tstesummarytxt {
  command <<<
    tst_esummary_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}