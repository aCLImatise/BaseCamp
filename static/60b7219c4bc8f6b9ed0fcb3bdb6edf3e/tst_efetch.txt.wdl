version 1.0

task Tstefetchtxt {
  command <<<
    tst_efetch_txt
  >>>
  output {
    File out_stdout = stdout()
  }
}