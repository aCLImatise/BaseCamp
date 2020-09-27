version 1.0

task Tstesearchtxt {
  command <<<
    tst_esearch_txt
  >>>
  output {
    File out_stdout = stdout()
  }
}