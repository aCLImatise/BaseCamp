version 1.0

task Tstesearchtxt {
  command <<<
    tst_esearch_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}